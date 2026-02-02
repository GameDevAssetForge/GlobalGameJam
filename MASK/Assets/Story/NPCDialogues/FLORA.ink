// --- OPENING ---
Flora is holding her champagne glass with white knuckles. 
+ [...]
- "Come to gawk at the humiliated noblewoman? I'm not interested in company."
    -> step_1

=== step_1 ===
// The only choice available to progress the story
* ["You seem upset. Bad evening?"]
    -> bad_evening_talk

=== bad_evening_talk ===
She laughs bitterly. "A bad evening? Alistair eviscerated me in front of the entire court. Called me mentally unfit."
+ [...]
- "Said I'd be begging in gutters by year's end—all because I refused to marry him."
+ [...]
- Her voice shakes. "Do you know what it's like to have your entire legacy threatened by a man's bruised ego?"
+ [...]
- "He's filing papers to have me disinherited. My family's name, erased, because I said no."
+ [...]
- She stares into the distance. "I actually thought my reputation would protect me. How naive."
    -> step_2

=== step_2 ===
* ["You're not the only one he's hurt tonight."]
    -> others_hurt_talk

=== others_hurt_talk ===
"Oh, I know. Derek's on the chopping block too. And Brooklyn? She's been his prisoner for years, just with nicer chains. Even Gaten—his own puppet—looks miserable."
+ [...]
- She turns to you. "But here's what terrifies me: Cornellius. He stands there, smiling, helping Alistair destroy people."
+ [...]
- "What kind of man does that? Either he's spineless, or he's playing a game none of us can see."
    -> step_3

=== step_3 ===
* ["What will you do?"]
    -> what_to_do_talk

=== what_to_do_talk ===
"What can I do? Fight him in court? He owns the judges. Appeal to the King? Gaten's his puppet. Run? He'll find me."
+ [...]
- Her voice drops to a whisper. "The only way to stop a man like Alistair is... well."
    -> ending

=== ending ===
Flora looks down into her glass, the liquid trembling. 
    -> END