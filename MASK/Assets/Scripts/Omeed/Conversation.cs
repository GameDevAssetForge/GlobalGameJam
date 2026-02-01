using UnityEngine;

public class Conversation : MonoBehaviour
{
    public Transform cible; // la position a attendre
    public float vitesse = 2f;
    public float distanceAttente = 1.5f;
    public AudioSource audioSource;

    private bool aAtteintCible = false;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    void Update()
    {
        float distance = Vector3.Distance(transform.position, cible.position);

        if (!aAtteintCible)
        {
            
            aAtteintCible = true;

            if (audioSource != null && !audioSource.isPlaying)
            {
                audioSource.Play();
            }
            
        }
        else
        {
            if (distance > distanceAttente)
            {
                aAtteintCible = false;
                if (audioSource != null && audioSource.isPlaying)
                {
                    audioSource.Stop();
                }
            }
        }
    }

}
