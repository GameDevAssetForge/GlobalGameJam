// --- OPENING ---
A woman in a vibrant gown pulls you aside, her eyes sparkling with excitement.
+ [...]
- "Oh perfect timing! I need someone to gossip with!"
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "Tell me it all!"
    -> gossip_talk
* "What do you think will happen tonight?"
    -> predictions_talk
* -> ending

=== gossip_talk ===
"Where do I even start? Derek's probably being thrown away—he has too much power he could give to the next in lines."
+ [...]
- "Flora's inheritance is being challenged because she rejected Alistair's proposal. Can you believe it?"
+ [...]
- "A man that powerful can't handle rejection like a normal person?" 
+ [...]
- She flips her hair dismissively. "And Gaten! Poor thing can't even choose his own mask without approval. Brooklyn should be ruling, not him."
    -> choice_menu

=== predictions_talk ===
"Something dramatic, obviously! You don't throw a masquerade ball during this much tension without expecting fireworks."
+ [...]
- She leans in with an excited whisper. "I overheard Brooklyn's handmaiden saying her mistress has been planning something big."
+ [...]
- "And Alistair's been locked in that private room for ages now. When he comes out, someone's going to get destroyed."
+ [...]
- "Smart money's on Flora or Derek."
    -> choice_menu

=== ending ===
She spots someone across the room and waves frantically. 
+ [...]
- "Oh! There’s the Duchess! I must go see what she knows. Ta-ta!"
    -> END
