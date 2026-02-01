// --- OPENING ---
A young woman in a cloud of tulle and silk beams at you, her eyes wide with wonder as she takes in the scene.
+ [...]
- "Oh! This is my first royal ball! Isn't it magical?"
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "Are you enjoying yourself?"
    -> enjoyment_talk
* "Have you met the royals?"
    -> royals_talk
* "What have you noticed?"
    -> noticed_talk
* -> ending

=== enjoyment_talk ===
"Very much! Though..." She bites her lip, looking slightly confused. 
+ [...]
- "I don't understand why everyone seems so tense."
+ [...]
- "It’s a party, isn't it? Shouldn't people be... happier?"
    -> choice_menu

=== royals_talk ===
"I curtsied to Prince Gaten, but he barely looked at me. Just kept glancing toward the private wing like he was waiting for someone."
+ [...]
- "And Princess Brooklyn is gorgeous but terrifying. She looked at me like she could see right through me."
+ [...]
- She giggles nervously. "Is it always like this at court? Everyone seems to be playing a game I don't understand."
    -> choice_menu

=== noticed_talk ===
"Well, I'm probably just being silly, but... that servant girl, Estelle?"
+ [...]
- "I think I saw her drop something earlier near the east hallway. It looked like a handkerchief."
+ [...]
- "She seemed so flustered she didn't even notice! I tried to call after her but she'd already rushed off."
+ [...]
- "I wonder if someone returned it to her?"
    -> choice_menu

=== ending ===
She sighs happily, looking back at the dancers. 
+ [...]
- "I suppose I should find my chaperone. I hope the rest of your night is just as magical as mine!"
    -> END
