using UnityEngine;
using UnityEngine.InputSystem;

public class FirstPersonLook : MonoBehaviour
{
    [SerializeField] private InputActionAsset inputActions;
    [SerializeField] private Transform cameraPivot;
    [SerializeField] private float sensitivity = 0.10f;
    [SerializeField] private float minPitch = -89f;
    [SerializeField] private float maxPitch = 89f;

    private InputAction lookAction;
    private float pitch;

    private void Awake()
    {
        var map = inputActions.FindActionMap("Player", true);
        lookAction = map.FindAction("Look", true);

        if (cameraPivot == null)
            cameraPivot = Camera.main.transform;
    }

    private void OnEnable()
    {
        lookAction.Enable();
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    private void OnDisable()
    {
        lookAction.Disable();
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }

    private void Update()
    {
        Vector2 delta = lookAction.ReadValue<Vector2>();

        float yaw = delta.x * sensitivity;
        float pitchDelta = delta.y * sensitivity;

        transform.Rotate(Vector3.up, yaw, Space.Self);

        pitch -= pitchDelta;
        pitch = Mathf.Clamp(pitch, minPitch, maxPitch);
        cameraPivot.localEulerAngles = new Vector3(pitch, 0f, 0f);
    }
}
