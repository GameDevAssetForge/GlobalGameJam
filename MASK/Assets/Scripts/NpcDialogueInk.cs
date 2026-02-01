using UnityEngine;
using TMPro;
using Ink.Runtime;

public class NpcDialogueInk : MonoBehaviour
{
    [Header("Ink")]
    [SerializeField] private TextAsset inkJson;

    [Header("Bubble UI (world-space)")]
    [SerializeField] private CanvasGroup group;
    [SerializeField] private TMP_Text label;

    private Story story;

    public bool HasChoices => story != null && story.currentChoices != null && story.currentChoices.Count > 0;
    public bool IsEnded => story != null && !story.canContinue && !HasChoices;


    private void Awake()
    {
        ResetStory();
        Hide();
        ShowLine("TEST");
    }

    public string GetChoicesText(int max = 3)
    {
        if (!HasChoices) return "";

        int count = Mathf.Min(max, story.currentChoices.Count);
        System.Text.StringBuilder sb = new System.Text.StringBuilder();

        for (int i = 0; i < count; i++)
            sb.AppendLine($"{i + 1}) {story.currentChoices[i].text}");

        return sb.ToString().TrimEnd();
    }
    // public string GetChoicesText(int max = 3)
    // {
    //     if (!HasChoices) return "";

    //     int count = Mathf.Min(max, story.currentChoices.Count);
    //     System.Text.StringBuilder sb = new System.Text.StringBuilder();

    //     for (int i = 0; i < count; i++)
    //         sb.AppendLine($"{i + 1}) {story.currentChoices[i].text}");

    //     return sb.ToString().TrimEnd();
    // }

    private void TryLoadStory()
    {
        if (inkJson == null)
        {
            Debug.LogError($"{name}: inkJson is not assigned");
            return;
        }

        try
        {
            story = new Story(inkJson.text);
        }
        catch (System.Exception e)
        {
            Debug.LogError($"{name}: Failed to create Ink Story. Did you assign the compiled .json and not the .ink?\n{e}");
            story = null;
        }
    }
    public void ResetStory()
    {
        if (inkJson == null) return;
        story = new Story(inkJson.text);
    }

    public void Advance()
    {
        if (inkJson == null || group == null || label == null) return;
        if (story == null) ResetStory();
        if (story == null) return;

        if (!story.canContinue && !HasChoices)
            ResetStory();

        if (HasChoices)
            return;

        // One line per press
        if (story.canContinue)
        {
            string line = story.Continue().Trim();
            ShowLine(line);
        }
    }


    public void ChooseOption(int optionNumber)
    {
        if (!HasChoices) return;

        int index = optionNumber - 1;
        if (index < 0 || index >= story.currentChoices.Count) return;

        story.ChooseChoiceIndex(index);

        if (HasChoices) return;

        if (story.canContinue)
        {
            string line = story.Continue().Trim();
            if (line.Length > 0)
                ShowLine(line);
        }
        else
        {
            ResetStory();
        }
    }


    
    private void ShowLine(string text)
    {
        label.text = text;
        Show(true);
    }

    private void ShowChoices()
    {
        int count = Mathf.Min(3, story.currentChoices.Count);
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        Debug.Log("Showing choices");
        for (int i = 0; i < count; i++)
        {
            sb.Append(i + 1);
            sb.Append(") ");
            sb.AppendLine(story.currentChoices[i].text);
        }

        label.text = sb.ToString().TrimEnd();
        Show(true);
    }

    public void Hide()
    {
        if (label != null) label.text = "a";
        Show(false);
    }

    private void Show(bool show)
    {
        group.alpha = show ? 1f : 0f;
        group.blocksRaycasts = false;
        group.interactable = false;
    }
}
