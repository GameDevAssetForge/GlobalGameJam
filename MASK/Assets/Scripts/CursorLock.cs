using UnityEngine;

public class CursorLock : MonoBehaviour
{
    [SerializeField] private KeyCode unlockKey = KeyCode.Escape;

    private void Start() => Lock();

    private void Update()
    {
        if (Input.GetKeyDown(unlockKey))
            Unlock();
    }

    private void OnApplicationFocus(bool hasFocus)
    {
        if (hasFocus) Lock();
    }

    private void Lock()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    private void Unlock()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }
}
