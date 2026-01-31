using UnityEngine;
using TMPro;

public class NpcSpeechBubble : MonoBehaviour
{
    [SerializeField] private CanvasGroup group;
    [SerializeField] private TMP_Text label;

    private void Awake() => Hide();

    public void Say(string text)
    {
        label.text = text;
        ShowText(true);
    }

    public void Hide()
    {
        if (label != null) label.text = "";
        ShowText(false);
    }

    private void ShowText(bool show)
    {
        group.alpha = show ? 1f : 0f;
        group.blocksRaycasts = false;
        group.interactable = false;
    }
}
