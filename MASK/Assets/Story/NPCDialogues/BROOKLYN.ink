// --- OPENING ---
Brooklyn stands before an ornate mirror, two silent servants adjusting her hair. She doesn't turn when you enter.
+ [...]
- "The music is rather tiresome tonight, don't you think? All pomp, no passion."
+ [...]
- "You, tell me you're not here to discuss the weather or compliment my dress like the last five idiots."
+ [...]
    -> choice_menu

// --- THE CHOICE HUB ---
=== choice_menu ===
* "The masquerade seems to be going well."
    -> masquerade_talk
* "I noticed the Prince isn't by your side."
    -> prince_talk
* "There's tension in the ballroom tonight."
    -> tension_talk
* -> ending 

=== masquerade_talk ===
"Going well? Darling, it's a carefully orchestrated performance. Everyone's wearing two masks tonight—the one on their face and the one they wear every day."
+ [...]
- Brooklyn sips her champagne.
+ [...]
- "Although, I must say, watching Gaten stumble through small talk is always entertaining. My dear brother has all the charm of a trained parrot."
+ [...]
- "He even glances toward Alistair's usual corner before answering questions, like a dog waiting for commands. Pathetic, really."
    -> choice_menu

=== prince_talk ===
"Gaten? My dear brother is likely wherever his master told him to stand. You know, when we were children, he used to make his own decisions."
+ [...]
- "Now he can't choose a dinner wine without looking over his shoulder."
+ [...]
- She gives a short, bitter laugh.
+ [...]
- "But I suppose that's what happens when you're raised to be a monument instead of a man."
    -> choice_menu

=== tension_talk ===
"Tension? That's court, darling. Everyone smiling with knives behind their backs. Though I'll admit, Flora looked particularly murderous earlier."
+ [...]
- "I heard Alistair made quite the public jest about her... prospects. A woman scorned and a noble humiliated? That's a dangerous combination."
+ [...]
- Brooklyn pauses, her reflection catching yours in the glass.
+ [...]
- "Then again, dangerous is relative when you're already living in a cage."
    -> choice_menu

=== ending ===
    -> END