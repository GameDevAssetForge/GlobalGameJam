using UnityEngine;
using TMPro;

public class InteractPromptByTag : MonoBehaviour
{
    [Header("Raycast")]
    [SerializeField] private Transform cameraTransform;
    [SerializeField] private float maxDistance = 3f;
    [SerializeField] private LayerMask interactableLayer;

    [Header("UI")]
    [SerializeField] private CanvasGroup promptGroup;
    [SerializeField] private TMP_Text promptText;
    public GameObject CurrentTarget { get; private set; }
    private int lastTargetId = 0;
    private string lastMsg = "";
    private bool lastShow = false;

    private const string MSG_INSPECT = "Press E to inspect";
    private const string MSG_TALK = "Press E to talk to";

    private void Awake()
    {
        if (cameraTransform == null) cameraTransform = Camera.main.transform;
        Show(false);
    }

    private void Update()
    {
        bool show = false;
        string msg = "";
        int targetId = 0;

        CurrentTarget = null;

        if (Physics.Raycast(cameraTransform.position, cameraTransform.forward,
                out RaycastHit hit, maxDistance, interactableLayer, QueryTriggerInteraction.Ignore))
        {
            GameObject go = hit.collider.transform.root.gameObject;

            if (go.CompareTag("Inspectable"))
            {
                show = true;
                msg = MSG_INSPECT;
                CurrentTarget = go;
                targetId = go.GetInstanceID();
            }
            else if (go.CompareTag("NPC"))
            {
                show = true;
                msg = MSG_TALK;
                CurrentTarget = go;
                targetId = go.GetInstanceID();
            }
        }

        if (show != lastShow || targetId != lastTargetId || msg != lastMsg)
        {
            lastShow = show;
            lastTargetId = targetId;
            lastMsg = msg;

            if (show)
            {
                if (promptText.text != msg) promptText.text = msg;
                Show(true);
            }
            else
            {
                if (promptText.text.Length != 0) promptText.text = "";
                Show(false);
            }
        }
    }


    private void Show(bool show)
    {
        if (promptGroup == null) return;
        promptGroup.alpha = show ? 1f : 0f;
        promptGroup.blocksRaycasts = show;
        promptGroup.interactable = show;
    }
}
