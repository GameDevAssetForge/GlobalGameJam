using UnityEngine;
using UnityEngine.InputSystem;

public class FPCharacterController : MonoBehaviour
{
    [SerializeField] private InputActionAsset inputActions;
    [SerializeField] private Transform cameraTransform;
    [SerializeField] private UnityEngine.CharacterController controller;
    [SerializeField] private float speed = 5f;
    [SerializeField] private InteractPromptByTag interactPrompt;
    [SerializeField] private float hideDelayAfterLookAway = 2f;

    private GameObject talkingToNpc;
    private NpcSpeechBubble talkingBubble;
    private float hideAtTime = -1f;
    private InputAction moveAction;
    private InputAction interactAction;


    private void Awake()
    {
        if (interactPrompt == null)
        interactPrompt = FindFirstObjectByType<InteractPromptByTag>();
        if (controller == null) controller = GetComponent<UnityEngine.CharacterController>();
        if (cameraTransform == null) cameraTransform = Camera.main.transform;

        var map = inputActions.FindActionMap("Player", true);
        moveAction = map.FindAction("Move", true);
        interactAction = map.FindAction("Interact", true);
    }

    private void OnEnable()
    {
        moveAction.Enable();
        interactAction.Enable();
    }

    private void OnDisable()
    {
        moveAction.Disable();
        interactAction.Disable();
    }


    private void Update()
    {
        GameObject target = interactPrompt != null ? interactPrompt.CurrentTarget : null;

        if (interactAction.WasPressedThisFrame())
        {
            target = interactPrompt.CurrentTarget;

            if (target != null && target.CompareTag("NPC"))
            {
                talkingToNpc = target;
                talkingBubble = talkingToNpc.GetComponentInChildren<NpcSpeechBubble>();

                if (talkingBubble != null)
                {
                    talkingBubble.Say("Hello!");
                    hideAtTime = -1f;
                }
            }
        }

        if (talkingToNpc != null && talkingBubble != null)
        {
            bool lookingAtTalkingNpc = (interactPrompt.CurrentTarget == talkingToNpc);

            if (lookingAtTalkingNpc)
            {
                hideAtTime = -1f;
            }
            else
            {
                if (hideAtTime < 0f)
                    hideAtTime = Time.time + hideDelayAfterLookAway;

                if (Time.time >= hideAtTime)
                {
                    talkingBubble.Hide();
                    talkingToNpc = null;
                    talkingBubble = null;
                    hideAtTime = -1f;
                }
            }
        }

        Vector2 input = moveAction.ReadValue<Vector2>();

        Vector3 forward = cameraTransform.forward;
        Vector3 right = cameraTransform.right;
        forward.y = 0f;
        right.y = 0f;
        forward.Normalize();
        right.Normalize();

        Vector3 move = (forward * input.y + right * input.x);

        controller.Move(move * speed * Time.deltaTime);
    }
}
