// using System.Diagnostics;
using System.Runtime.CompilerServices;
using UnityEngine;
using UnityEngine.InputSystem;

public class CharacterController : MonoBehaviour
{
    public InputActionAsset InputActions;

    private InputAction i_moveAction;
    private InputAction i_lookAction;
    private InputAction i_interactAction;

    private void OnEnable()
    {
        InputActions.FindActionMap("Player").Enable();
    }

    private void OnDisable()
    {
        InputActions.FindActionMap("Player").Disable();
    }

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        Debug.Log("allo");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
