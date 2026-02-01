using UnityEngine;
using UnityEngine.InputSystem;

public class FPCharacterController : MonoBehaviour
{
    [SerializeField] private InputActionAsset inputActions;

    [Header("Movement")]
    [SerializeField] private Transform cameraTransform;
    [SerializeField] private UnityEngine.CharacterController controller;
    [SerializeField] private float speed = 5f;

    [Header("Interaction")]
    [SerializeField] private InteractPromptByTag interactPrompt;
    [SerializeField] private float hideDelayAfterLookAway = 2f;

    private InputAction moveAction;
    private InputAction interactAction;
    private InputAction choice1Action;
    private InputAction choice2Action;
    private InputAction choice3Action;

    private GameObject talkingToNpc;
    private NpcDialogueInk currentNpc;
    private float hideAtTime = -1f;

    private void RefreshChoiceOverride()
    {
        if (currentNpc != null && currentNpc.HasChoices)
            interactPrompt.SetOverride(currentNpc.GetChoicesText());
        else
            interactPrompt.ClearOverride();
    }

    private void Awake()
    {
        if (interactPrompt == null)
            interactPrompt = FindFirstObjectByType<InteractPromptByTag>();

        if (controller == null)
            controller = GetComponent<UnityEngine.CharacterController>();

        if (cameraTransform == null && Camera.main != null)
            cameraTransform = Camera.main.transform;

        var map = inputActions.FindActionMap("Player", true);

        moveAction     = map.FindAction("Move", true);
        interactAction = map.FindAction("Interact", true);

        // Create these actions in your Input Actions asset:
        // Choice1 -> <Keyboard>/1, Choice2 -> <Keyboard>/2, Choice3 -> <Keyboard>/3
        choice1Action = map.FindAction("Choice1", true);
        choice2Action = map.FindAction("Choice2", true);
        choice3Action = map.FindAction("Choice3", true);
    }

    private void OnEnable()
    {
        moveAction.Enable();
        interactAction.Enable();
        choice1Action.Enable();
        choice2Action.Enable();
        choice3Action.Enable();
    }

    private void OnDisable()
    {
        moveAction.Disable();
        interactAction.Disable();
        choice1Action.Disable();
        choice2Action.Disable();
        choice3Action.Disable();
    }

    private void Update()
    {
        GameObject lookedAt = interactPrompt != null ? interactPrompt.CurrentTarget : null;

        if (interactAction.WasPressedThisFrame())
        {
            var target = interactPrompt.CurrentTarget;
            if (target != null && target.CompareTag("NPC"))
            {
                talkingToNpc = target;
                currentNpc = talkingToNpc.GetComponent<NpcDialogueInk>();
                if (currentNpc == null) return;

                // If we’re already at a choice point, don’t Advance; just show current choices
                if (!currentNpc.HasChoices)
                    currentNpc.Advance(); // NPC bubble shows one line

                RefreshChoiceOverride();  // <-- THIS updates HUD to "I have another question" or menu choices

                if (currentNpc.IsEnded)
                {
                    interactPrompt.ClearOverride();
                    currentNpc.Hide();
                    currentNpc = null;
                    talkingToNpc = null;
                }
            }
        }




        if (currentNpc != null && currentNpc.HasChoices)
        {
            int picked = 0;
            if (choice1Action.WasPressedThisFrame()) picked = 1;
            else if (choice2Action.WasPressedThisFrame()) picked = 2;
            else if (choice3Action.WasPressedThisFrame()) picked = 3;

            if (picked != 0)
            {
                currentNpc.ChooseOption(picked);

                RefreshChoiceOverride();

                if (currentNpc.IsEnded)
                {
                    interactPrompt.ClearOverride();
                    currentNpc.Hide();
                    currentNpc = null;
                    talkingToNpc = null;
                }
            }
        }



        if (talkingToNpc != null && currentNpc != null)
        {
            bool lookingAtTalkingNpc = interactPrompt != null && interactPrompt.CurrentTarget == talkingToNpc;

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
                    currentNpc.Hide();
                    interactPrompt.ClearOverride();
                    talkingToNpc = null;
                    currentNpc = null;
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

        Vector3 move = forward * input.y + right * input.x;
        controller.Move(move * speed * Time.deltaTime);
    }
}
