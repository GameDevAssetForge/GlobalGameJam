// --- OPENING ---
The man sways unsteadily on his feet, nearly sloshing his drink on your shoes. 
+ [...]
- "You! You look like someone who can keep a secret. Can you? Can you keep a secret?"
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "What secret?"
    -> secret_talk
* "You've had quite a bit to drink."
    -> drink_talk
* -> pass_out // Fallback triggers if the player somehow exhausts the choices.

=== secret_talk ===
He leans in, slurring his words. "I saw Derek—the big, scary Captain—nearly punch a wall earlier."
+ [...]
- "Someone told him about the replacement petition. Alistair's getting him removed! Thirty years of service, and poof! Gone!"
+ [...]
- He lets out a loud hiccup. "A soldier with nothing to lose is dangerous, friend. Very dangerous."
+ [...]
    -> pass_out

=== drink_talk ===
"Wouldn't you?" He laughs, the sound a bit too loud for the room. "This whole place is a powder keg!"
+ [...]
- "Gaten can't string two sentences together without looking for Alistair's approval. Brooklyn's playing queen."
+ [...]
- "And Cornellius? That man is always smiling. Nobody's that happy unless they're planning something."
+ [...]
- He takes another long swig from his glass. "Mark my words, someone's going to snap tonight."
+ [...]
    -> pass_out

=== pass_out ===
The man opens his mouth to say more, but his eyes suddenly roll back.
+ [...]
- With a heavy thud, he collapses onto the table and begins to snore loudly.
+ [...]
- It seems like the conversation is over.
    -> END
