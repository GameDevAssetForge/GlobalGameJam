using UnityEngine;

public class AlwaysFaceCamera : MonoBehaviour
{
    [SerializeField] private Transform cam;

    private void Awake()
    {
        if (cam == null && Camera.main != null) cam = Camera.main.transform;
    }

    private void LateUpdate()
    {
        if (cam == null) return;
        transform.forward = cam.forward;
    }
}
