// --- OPENING ---
The Sister stands with her hands tucked into her sleeves, her calm presence at odds with the frantic energy of the ballroom.
+ [...]
- "Blessings, child. Even in revelry, we must remember our souls."
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "What brings you to a masquerade?"
    -> mission_talk
* "Have you noticed anything unusual?"
    -> unusual_talk
* "What do you think of the royal family?"
    -> royal_talk
* -> ending

=== mission_talk ===
"Even the faithful must engage with the world." She sighs softly. "Though I confess, the sin of pride is thick here tonight."
+ [...]
- "I saw Flora weeping in the chapel garden earlier. She spoke of ruin and revenge."
+ [...]
- "When I offered counsel, she asked, 'Sister, is murder a sin if it prevents a greater evil?'"
+ [...]
- The Sister looks down at her prayer beads. "I... I didn't know how to answer."
    -> choice_menu

=== unusual_talk ===
"The Lord sees all, and sometimes, so do I." She lowers her voice significantly.
+ [...]
- "That servant, Estelle, confessed to me last week. She said she was being forced to carry messages—terrible messages—and feared for her life."
+ [...]
- "I told her to trust in God's protection, but..." 
+ [...]
- She shakes her head. "I saw her earlier, clutching a letter addressed to Brooklyn. The poor child looked hunted."
    -> choice_menu

=== royal_talk ===
"It's not my place to judge earthly crowns, but..." She chooses her words carefully.
+ [...]
- "Brooklyn has the mind of a ruler even though Gaten is next in line."
+ [...]
- "One wonders what God intends for this kingdom when the worthy lack power and the powerful lack worth."
+ [...]
- "Cornellius once told me that kingdoms fall when the wrong person holds the scepter."
+ [...]
- "I fear Alistair and he may be engineering that very fall."
    -> choice_menu

=== ending ===
She makes a small sign of blessing in the air. 
    -> END
