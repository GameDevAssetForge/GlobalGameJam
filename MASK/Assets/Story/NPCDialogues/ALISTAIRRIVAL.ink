// --- OPENING ---
The man stands in the shadows of the room, his eyes cold as he watches the ballroom.
+ [...]
- "You have the look of someone gathering intelligence. Join the club."
    -> step_1

=== step_1 ===
* ["What do you mean?"]
    -> intel_talk

=== intel_talk ===
"Everyone here is trying to figure out Alistair's next move." He lets out a bitter laugh.
+ [...]
- "The man's made enemies of half the nobility, but we're all too afraid to act against him."
+ [...]
- "He has documents, you see. Secrets that can bury a family in a single afternoon."
    -> step_2

=== step_2 ===
* ["You sound like you have personal experience."]
    -> experience_talk

=== experience_talk ===
"He ruined my brother five years ago over a business dispute. Destroyed him completely."
+ [...]
- He stares darkly at the crowd. "Cornellius helped, actually. Delivered the killing blow in court with that silver tongue of his."
+ [...]
- "I've watched that protégé of Alistair's carefully ever since. The student's learning well—maybe too well."
+ [...]
- "Sometimes I think Cornellius is even more dangerous than his master."
    -> step_3

=== step_3 ===
* ["What do you hope happens tonight?"]
    -> hope_talk

=== hope_talk ===
"Hope?" He laughs, though there is no humor in it. "I hope Alistair chokes on his champagne. I hope someone finally stands up to him."
+ [...]
- "Brooklyn has the spirit for it, but not the proof. Flora has the rage, but not the means."
+ [...]
- "Derek has the strength, but not the freedom. And Gaten?"
+ [...]
- He scoffs. "That boy couldn't stand up to a stiff breeze. If anything's going to change, it won't be tonight."
+ [...]
    -> ending

=== ending ===
    -> END
