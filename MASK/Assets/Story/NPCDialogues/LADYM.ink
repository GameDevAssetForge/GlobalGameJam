// --- OPENING ---
A noblewoman beckons you over with a flick of her fan, leaning in close.
+ [...]
- "Ssh! Come here, dear. I have the most delicious rumor."
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "What have you heard?"
    -> rumor_talk
* "Tell me about the nobles here."
    -> nobles_talk
* "What do you think of the ball?"
    -> ball_talk
* -> ending

=== rumor_talk ===
"My maid's cousin works in the kitchens, and she swears she overheard someone say Estelle had an important errand in the Princess Brooklyn's chambers."
+ [...]
- "Something regarding a letter. Unusual, since she's normally Alistair's attendant, not Brooklyn's! Can you imagine?"
+ [...]
- "That poor child is mixed up in something dangerous. Though you know how servants gossip—who knows if it's even true!"
+ [...]
- "But that poor child does look terrified."
    -> choice_menu

=== nobles_talk ===
"Oh, where do I start? Cornellius has been Alistair's shadow for years, but lately... I've noticed him watching his 'mentor' carefully."
+ [...]
- "Though I must say, tonight he's been remarkably... visible. Almost making sure people see him in the ballroom."
+ [...]
- "Establishing presence, if you know what I mean."
    -> choice_menu

=== ball_talk ===
"Brooklyn certainly knows how to throw an event, though one wonders at the timing."
+ [...]
- "Hosting a grand masquerade right when she’s about to be shipped off to this far away country?"
+ [...]
- She raises an eyebrow suggestively. "Either she's brilliantly bold or dangerously stupid. My money's on the former."
+ [...]
- "That girl's got more spine than her brother has in his whole body."
    -> choice_menu

=== ending ===
She taps her chin with her fan, her eyes scanning for a new target. 
+ [...]
- "But look at me, talking your ear off. Go on, dear. Go see the drama for yourself."
    -> END