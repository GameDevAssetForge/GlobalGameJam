// --- OPENING ---
Derek stands rigidly near the powder room entrance, arms crossed, jaw tight. He notices your approach and his eyes narrow.
+ [...]
- "If you're here to gossip, find someone else."
+ [...]
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "You look uncomfortable."
    -> uncomfortable_talk
* "Is security always this tense?"
    -> security_talk
* "Have you seen anything concerning?"
    -> concerning_talk
* -> ending 

=== uncomfortable_talk ===
-He grunts.
+ [...]
-"I'm a soldier at a masquerade. Of course I'm uncomfortable. All these masks and whispers—give me a battlefield any day."
+ [...]
- "At least there, you know who your enemies are."
+ [...]
- He glances around the room. 
+ [...]
- "For example, you see Cornellius over there, playing the charming courtier? He's been watching the room like a hawk all night, noting who speaks to whom."
+ [...]
- "Alistair's trained him well."
    -> choice_menu

=== security_talk ===
"Security is my job. The tension is everyone else's problem."
+ [...]
- His jaw tightens and he pauses for a moment.
+ [...]
-"Though I suppose it won’t…"
+ [...]
- He crosses his arms firmly. 
+ [...]
"If you're fishing for court gossip, try someone else."
    -> ending

=== concerning_talk ===
He gives you a sharp look. 
+ [...]
-"Concerning? That's a broad question."
+ [...]
- "I've seen what I always see—nobles playing their games. Flora storming off. Servants scurrying. Brooklyn locked away with her attendants."
+ [...]
- He shakes his head dismissively. "If you're worried about safety, don't be. I'm still on duty."
+ [...]
- "Now unless you have an actual security concern, I have a ballroom to watch."
    -> choice_menu

=== ending ===
Derek turns his attention back to the crowd, his posture unyielding. 
    -> END
