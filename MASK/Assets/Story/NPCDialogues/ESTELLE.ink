// --- OPENING ---
Estelle jumps slightly as you approach, her hands trembling. 
+ [...]
- "I—I'm sorry, I can't talk long. I have duties."
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
// Choice 1 will only appear if Choice 2 has NOT been picked yet.
* {not guests_talk} "You seem frightened. Is everything alright?"
    -> frightened_talk

// Choice 2
* (guests_talk) "Do you know all the guests well?"
    -> knowledge_talk

// Choice 3 (Labeled Choice 4 in your prompt)
* "Are you safe?"
    -> safe_talk

// Fallback: If all available choices are gone, she leaves.
* -> hurry_away

=== frightened_talk ===
She glances around nervously. "Alright? Nothing's alright." 
+ [...]
- Her voice drops to a whisper. "Alistair... doesn't see me. I’m like furniture to him."
+ [...]
- "He talks about it all, about destroying reputations, about 'removing obstacles' right in front of me like I'm not even there." 
+ [...]
- "Do you know what happens to servants who know too much? We disappear. We get blamed." 
+ [...]
- Tears form in her eyes. "Lady Flora looked at me earlier like I was poison."
    -> choice_menu

=== knowledge_talk ===
"Know them? I serve them. There's a difference. But you learn things when they forget you're in the room." 
+ [...]
- She hesitates. "Cornellius, for instance—he acts like Alistair's loyal dog, but I've heard him talk when Alistair isn't around." 
+ [...]
- "There's... ambition there. Hidden, but there. And Brooklyn? She's not as helpless as she pretends." 
+ [...]
- Her voice drops. "Tonight feels different though. Everyone's watching everyone. I feel like I'm in the middle of something I don't understand."
    -> choice_menu

=== safe_talk ===
Tears well up in her eyes. "Safe? I... I don't know anymore. I haven't done anything wrong, but I feel like I'm being watched." 
+ [...]
- "They've involved me in things I shouldn't do. I'm just trying to survive. If any of this comes out..." 
+ [...]
- She shakes her head frantically. "I need to go look for my handkerchief!"
    -> hurry_away

=== hurry_away ===
Estelle doesn't wait for a response. She hitches up her apron and hurries away into the crowd before you can ask another word.
    -> END
