using UnityEngine;
using UnityEngine.InputSystem;

public class FPCharacterController : MonoBehaviour
{
    [SerializeField] private InputActionAsset inputActions;
    [SerializeField] private Transform cameraTransform;
    [SerializeField] private UnityEngine.CharacterController controller;
    [SerializeField] private float speed = 5f;

    private InputAction moveAction;
    private InputAction interactAction;


    private void Awake()
    {
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
        if (interactAction.WasPressedThisFrame())
        {
            Debug.Log("pressed interact key");
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
