// --- OPENING ---
The young guard stands by the entrance, his hand resting nervously on the hilt of his sword.
+ [...]
- "I probably shouldn't be talking to guests. Captain's orders."
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "Is something wrong?"
    -> wrong_talk
* "What can you tell me about tonight?"
    -> tonight_talk
* -> called_away

=== wrong_talk ===
"Wrong?" He looks around quickly to see if anyone is watching.
+ [...]
- "The Captain's been on edge all week. Ever since he found out about the... I shouldn't say."
+ [...]
- "But let's just say loyalty doesn't mean what it used to around here."
+ [...]
- "Derek trained me himself, and now they want to replace him with some nobleman's nephew who's never held a real sword. It's not right."
    -> choice_menu

=== tonight_talk ===
"Between you and me?" He leans in and whispers. "We've been ordered to watch Estelle. That servant girl. Alistair’s."
+ [...]
- "Apparently she's been acting suspicious, carrying sealed letters and making unauthorized trips to restricted areas."
+ [...]
- "Captain Derek thinks she might be involved in espionage. But honestly? I think she just looks scared."
+ [...]
- "Like a rabbit who knows the hounds are coming."
    -> choice_menu

=== called_away ===
A sharp whistle echoes from across the hall, and the guard snaps to attention.
+ [...]
- "That's for me. I have to go."
+ [...]
- He hurries away before you can say another word, his armor clanking softly.
    -> END
