// --- OPENING ---
Gaten sits slumped in a chair, half-hidden by curtains, nursing a drink. He looks exhausted.
+ [...]
- He gives you a nervous smile. "Oh, hello. Are you... should I know you? I'm terrible with faces."
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "You don't seem to be enjoying yourself, Your Highness."
    -> enjoyment_talk
* "Your sister seems determined tonight."
    -> sister_talk
* "How do you find working with your advisors, Your Highness?"
    -> advisors_talk
* -> ending // Fallback: triggers once all topics are used.

=== enjoyment_talk ===
He forces a tight smile. "Enjoying myself? Of course. My sister has organized a... spectacular event."
+ [...]
- He glances around the ballroom, then looks back down into his drink. 
+ [...]
- "Though I confess, these gatherings can be rather exhausting."
    -> choice_menu

=== sister_talk ===
He studies his wine. 
+ [...]
"Determined. Yes, that's one word for it." 
+ [...]
- After a long pause, he continues. "Brooklyn has always fought for what she believes is hers."
+ [...]
- He takes a sip. 
+ [...]
-"My sister and I disagree on much, but we're both playing roles we didn't choose. She just refuses to admit it." 
+ [...]
- "We probably have the same goal. She just doesn't like the way I play my hand."
    -> choice_menu

=== advisors_talk ===
He straightens slightly, as if remembering his role. 
+ [...]
-"My advisors are... highly capable. Each brings their own strengths to the Crown."
+ [...]
- He takes a long sip. 
+ [...]
-"Lord Alistair, particularly, has been—" 
+ [...]
- His jaw tightens suddenly. "—instrumental in shaping the court's direction. One might say he has a hand in every decision."
+ [...]
- His voice hardens. "People probably think a future king should trust his own judgment more. They don't understand that some counsel is... difficult to refuse."
+ [...]
- He stares silently into his glass.
    -> choice_menu

=== ending ===
Gaten seems to shrink back into himself. 
+ [...]
- "You should move on. It isn't wise to be seen hovering near a Prince who has nothing left to say."
    -> END