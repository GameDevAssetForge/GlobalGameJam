using UnityEngine;
using TMPro;

public class InteractPromptByTag : MonoBehaviour
{
    [Header("Raycast")]
    [SerializeField] private Transform cameraTransform;
    [SerializeField] private float maxDistance = 5f;
    [SerializeField] private LayerMask interactableLayer;

    [Header("UI")]
    [SerializeField] private GameObject promptRoot;
    [SerializeField] private TMP_Text promptText;

    private void Awake()
    {
        if (cameraTransform == null) cameraTransform = Camera.main.transform;
        SetPrompt(false, "");
    }

    private void Update()
    {
        // Debug.DrawRay(cameraTransform.position, cameraTransform.forward * maxDistance, Color.green); Pour voir le raycast

        if (Physics.Raycast(cameraTransform.position, cameraTransform.forward,
                out RaycastHit hit, maxDistance, interactableLayer, QueryTriggerInteraction.Ignore))
        {
            string msg = MessageFor(hit.collider.gameObject);
            SetPrompt(!string.IsNullOrEmpty(msg), msg);
        }
        else
        {
            SetPrompt(false, "");
        }
    }


    private string MessageFor(GameObject go)
    {

        if (go.CompareTag("Inspectable")) return "Press E to inspect";
        if (go.CompareTag("NPC")) return "Press E to talk to this person";

        return "";
    }

    private void SetPrompt(bool show, string text)
    {
        if (promptText != null) promptText.text = text;
        if (promptRoot != null) promptRoot.SetActive(show);
        else if (promptText != null) promptText.gameObject.SetActive(show);
    }
}
