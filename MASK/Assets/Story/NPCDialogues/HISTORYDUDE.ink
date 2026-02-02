// --- OPENING ---
An older man looks up from a small notebook he's been scribbling in, his eyes sharp behind his spectacles.
+ [...]
- "Ah, an inquisitive mind. How rare at these vapid gatherings."
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "What are you working on?"
    -> work_talk
* "You seem to know everyone's secrets."
    -> history_talk
* "What do you think of tonight?"
    -> tonight_talk
* -> ending

=== work_talk ===
"I'm cataloging the lineage documents for the royal archive. Fascinating work, really."
+ [...]
- He adjusts his spectacles. "Did you know there are competing claims to the throne?"
+ [...]
- "The official line says Gaten is the rightful heir, but I've seen documents—documents that Alistair keeps locked away—that suggest otherwise."
+ [...]
- "Brooklyn's claim might actually be legitimate. But who am I to question those in power?"
    -> choice_menu

=== history_talk ===
"Not secrets, my dear. History." He smiles thinly. 
+ [...]
- "Cornellius, for instance, wasn't always Alistair's protégé. He came from nothing and clawed his way up through pure cunning."
+ [...]
- "Some say he's more ruthless than his mentor. Alistair creates pawns. Cornellius creates scenarios."
+ [...]
- "There's a difference. One is obedience. The other is... artistry."
    -> choice_menu

=== tonight_talk ===
"I think it's a chess game playing out in real-time." He gestures vaguely around the room.
+ [...]
- "Brooklyn makes her move by hosting this ball. Gaten's move is showing up and pretending he has power."
+ [...]
- He frowns. "Alistair's move is... actually, I haven't seen Alistair make a move yet. He's been absent from the main floor all evening."
+ [...]
- "For a man who loves to control every detail, his absence is deafening. Either he's planning something magnificent, or..." 
+ [...]
- He trails off, his brow furrowing. "Come to think of it, I haven't seen Cornellius either for the last hour or so. Unusual for someone who's usually so visible."
    -> choice_menu

=== ending ===
The Scholar returns his focus to his notebook, his quill poised and ready.
+ [...]
- "Forgive me, but I must record these observations before the ink of history dries. Good evening to you."
    -> END