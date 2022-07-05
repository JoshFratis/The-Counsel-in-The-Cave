=== layersedge ===
-> start 

= start
VAR sixAOVAR = 0 
VAR sixBOVAR = 0 
VAR sixCOVAR = 0 

VAR sevenConditionOne = false
VAR sevenConditionTwo = false

VAR MayWasPoliteToMoondog = false

# THEME: white
# DEFAULTTHEME: white
# TITLE: THE COUNSEL IN THE CAVE
# TITLE: ACT II, SCENE I 
# TITLE: LOST ON LAYERS' EDGE
-> one

= one 
# DIR 
May tumbles down through rows of smoke, turning over and over until she loses all sense of direction. She glimpses dizzy visions of her past and her future. 

She sees herself and Jason searching their school in vain for their missing guidance counselor. She sees the clues come from the disappearance– and point to something magical at play. May watches as she wanders off alone on the trail of the Counselor, searching for secret worlds hidden beneath the school. She sees a portal open up before her– and she sees herself enter. 

May passes by her memories. She closes her eyes, unable to consider what she’s seen. She falls down, further down, into The Layers. 

Blackout. 

By a single spotlight, we see May alone. She’s resting on a wide slab of stone. As she wakes, the lights rise. Together we see where she’s landed. 

The stone is floating, suspended in a sea of colorful clouds. They drift past on little bits of wind, which mix the colors within. There’s no land below, nor clear sky above. All around, paths of floating stepping stones arc into the distant clouds. 

Aboard one small stone, not far away, sits an old man (MOONDOG). He holds a fishing rod. His line is cast into a cloud. 
-> two 

= two 
# PB 
# DIA 
MAY
+ Hey you!
+ Excuse me?
--> three 

= three
# DIR 
The old man overhears, then turns to May to greet her. 
# DIA 
MOONDOG
Hello there! How do you fare on such a fine summer’s evening? 

MAY
+ Um, good, I guess. How are you? 
	MOONDOG
    Oh, I’m doing well. It’s a fine night for fishing, here on Layers’ Edge. The name’s Moondog. Pleasure to meet you.
+ Well, I’m a little lost. I could use your help. 

    MOONDOG
    I’m flattered by your asking, but I can’t be sure how helpful I would be. I’m just a simple fisherman, you see. I’m quite lost myself. In fact, I’d say round here you’d find few honest folk who wouldn’t say the same. No, not here. Not Layers’ Edge. 
    
    The name’s Moondog, by the way. Pleasure to meet you.

+ Tell me where I am. What do you want with me? 

	MOONDOG
    Calm yourself, friend! There’s no cause for alarm. I’m just a simple fisherman, an old man past the years he’s owed. My name is Moondog, of Layers’ Edge. Pleasure to meet you.
--> four 

= four 
# DIA 
# PB
MAY
+ Layers’ Edge?
    # DIR 
    Moondog’s eyes alight with blue fire. At once, he lets go of his rod, and it remains in place, floating in the air. The old man steps off from his floating stone, as if he were to plummet into the abyss below. But another floating stepping stone appears beneath his feet. He continues this way down to where May stands, walking on a hardly-formed path. 
    # DIA 
    MOONDOG
    Aye, Layers’ Edge. A border between worlds! The one above you come from…
    # DIR 
    Moondog motions vaguely upward. 
    # DIA 
    MOONDOG
    And naturally the greater Layers below. 
    # DIR 
    Moondog makes wide sweeping gestures below and around him.
    # DIA 
    MOONDOG
    Take a look around, my friend. 
+ {MayWasPoliteToMoondog} It’s good to meet you too. 
    ~ MayWasPoliteToMoondog = true
    Moondog smiles, glad to see another friendly face.
    -> four 
+ What do you fish, out here in the clouds?
    MOONDOG
    Oh, many curiosities. Once, I caught a window frame that led to somewhere else. When I spied through it, I could see another land. 
    
    MAY
    Like a portal?
    
    MOONDOG
    A porthole is a kind of window, yes. But I’m speaking of The Layers! This world within the window frame… It was one of many.  
    
    # DIR 
    Moondog makes wide sweeping gestures below and around him.
    # DIA 
    MOONDOG
    Take a look around, my friend. 
--> five

= five 
May peers over the bright abyss below. Glowing globes of gas float between the clouds, creating little constellations close at hand. 

Peering even deeper is like looking in a lake, where one’s view shifts between the mirrored sky and darkened depths below the surface. Here, layer upon layer of such surfaces intersect one another. They’re stacked down, further down into infinity. Each one reflects a unique reality.

Moondog moves to May. He lets go of his rod, and it remains in place, floating in the air. The old man steps off from his floating stone, as if he were to plummet into the abyss below. But another floating stepping stone appears beneath his feet. He continues this way down to where May stands, walking on a hardly-formed path. 
 -> six 
 
 = six 
 // Requires player to fulfil two conditions to move on 
 // One: See all three observations of one of three categories (Layers' Edge, The Layers, Moondog)
 // Two: See at least one observation from the sixB category (The Layers)
 # DIR 
+ {sixAOVAR == 0} May tries to reach a little globe of gas, floating close at hand.
    -> sixAO -> sixAA ->
+ {sixAOVAR == 1} May waves her hand into a colored cloud, wondering what they’re made of.
    -> sixAO -> sixAB ->
+ {sixAOVAR == 2} May looks on the landscape as if it were the surface of a lake, reflecting light and color.
    -> sixAO -> sixAC ->
+ {sixBOVAR == 0} Looking through The Layers, May can see flying manta rays passing between islands. 
    -> sixBO -> sixBA ->
+ {sixBOVAR == 1} One world below reflects a field of purple grass, long and waving in the wind, atop towering sea-cliffs. 
    -> sixBO -> sixBB ->
+ {sixBOVAR == 2} As deep as she can see, May finds a lonely lighthouse on a subterranean sea.   
    -> sixBO -> sixBC ->
+ {sixCOVAR == 0} May examines Moondog’s weathered hands.
    -> sixCO -> sixCA ->
+ {sixCOVAR == 1} May notices Moondog’s mismatched eyes.
   -> sixCO -> sixCB ->
+ {sixCOVAR == 2} May likes Moondog’s hat.
    -> sixCO -> sixCC ->
-
{
    - sevenConditionOne && sevenConditionTwo: -> seven 
    - else: -> six 
}

= sixAO 
~ sixAOVAR = sixAOVAR + 1
->->

= sixBO
~ sixBOVAR = sixBOVAR + 1
->->

= sixCO
~ sixCOVAR = sixCOVAR + 1
->->

= sixAA 
It buzzes at her touch, as if it were alive. 

# DIA 
MOONDOG
I caught one of these buggers once. On accident, of course. Funny little guy. 

MAY
What’d you do with it?

MOONDOG
Oh, I tried to let him go. But he wouldn’t leave me be! He followed me around. Wouldn’t let me fish in peace!

So I sighed and said, “Come on, you! Let’s wander for a while.” And that’s naturally what we did. 

Then eventually he moved on. Got lost of his own accord. I kind of miss him now, annoying as he was. 
->->

= sixAB 
# DIA 
MOONDOG
They get their color from the overlapping of the Layers. All their lights intersect, project onto the clouds. It’s quite the combination. 
->->

= sixAC 
MOONDOG
Layers’ Edge is called by some The Sea of Stars. Makes sense to me. I first arrived aboard a ship, before I was stranded. 

MAY
You were stranded? My dad and I fix up boats for a living. Maybe I could help. 

MOONDOG
Ha! You’re mighty kind. But I’m content to wander without a sail. Besides, I lost my ship long ago. She’s probably sunken somewhere far away by now. 
~ sevenConditionOne = true
->->

= sixBA 
# DIA 
MOONDOG 
Folks in those parts ride the rays to distant lands. 

MAY
How do they steer? I don’t see any reigns.

MOONDOG
Ha! They don’t! The riders surrender themselves to the creatures’ wills. That and the winds. See, the manta rays are blindfolded. They operate on instinct alone. 
~ sevenConditionTwo = true
->->

= sixBB
# DIA 
MOONDOG
I remember an old empire staked its claim atop those cliffs. Now of them you won’t hear more than mention. Save from the speaking reeds that echo calls of dead men.

Things often go awry where The Layers intersect. Here, The Subterranean Sea crashes 
against The Fields of Speaking Reeds. From the confluence comes disaster for any would-be conqueror. 
->->

= sixBC 
# DIA 
MOONDOG
Aye! The Subterranean Sea of which I speak! When The Lone Lighthouse goes dark, the fish begin to glow. Some say they look like stars, the deep sea a dark night sky. 

MAY
Do you fish there?

MOONDOG
Nay. As if I could ever bring myself to break a constellation. Though I often go to visit my friend Roger the Automaton, who keeps The Lonely Lighthouse in my absence. That, and to simply see the star-fish.
~ sevenConditionOne = true
->->

= sixCA 
 Moondog’s hands are cracked, but strong, like an old tree’s roots.
->->

= sixCB 
The old man wears an eye-patch over his right eye. His left is made of glass, but observes the world intently all the same.
->->

= sixCC
Moondog’s head is bare but for a comical night cap and little wisps of wiry white hair. His beard, however, is massive. 
~ sevenConditionOne = true
->->

= seven
# PB 
# DIA 
MOONDOG
So. What do you think, my friend?

MAY
+ It’s absolutely beautiful.
    I can’t believe this exists… that it’s been here all this time.
    
    MOONDOG
    	It’s quite the spectacle. And good for fishing, too! 
    
    MAY
    I wonder what’s out there, Moondog. Have you seen it all?
    
    
    MOONDOG
    Nay, far from it. Layers’ Edge is vast. The Layers, moreso. Their scale cannot be fathomed.
 
+ God, it’s terrifying!
	It’s so enormous… and unknown. I can’t understand it all. 

    MOONDOG
    That’s just part of being here, so near The Layers proper. I wouldn’t attempt to comprehend, if I were you. 
    Even its edge is vast. Its scale cannot be fathomed. 
--> eight 

= eight 
# DIA 
# PB
MAY
+ Well... I'm going to have to try. I’m here to find my guidance counselor. 

    MOONDOG
    Might I suggest a bit of fishing? In my experience, it’s best to let your quarry come to you. At least, I find success when I let the Layers be what they may, so to speak. But that’s a fisherman’s perspective. 

+ Haven't you explored? Tried to understand this place? 

    MOONDOG
    Oh, I did when I was younger. But those days have long since passed. Now I’m content to let The Layers be what they may. I’ve learned to let the fish find me, so to speak. 
--> nine

= nine 
# DIA 
MAY
I can’t imagine fishing up my Counselor.
+ But I think you’re onto something, Moondog. I’ll give it a try.
    -> nineA 
+ I can’t wait for them to come to me. I'm going to find them.
    -> nineB 

= nineA
MOONDOG
Aye. I’d be glad to have another angler here on Layers’ Edge. I think I have an artifact that may be of some use. 
# DIR 
Moondog gives a little whistle and his rod returns to him. Then he reels it in. On the end of the line is hooked another fishing rod, which he gives to May. 
# DIA 
MOONDOG
Take this on your journey. Good luck, my friend. You’re well on your way.   
--> ten 

= nineB
# DIA 
+ Won’t you help me pick a place to start searching?
    -> nineBA 
+ I can do it on my own. 
    -> nineBB 
    
= nineBA 
# PB 
# DIA 
MOONDOG
Nay. My tales would be no use. But if your mind cannot be swayed, there are some I know who tell me they are worthy guides. 

Never saw much sense in it myself, but some attempt to chart The Layers. The Crazed Cartographer’s been at it for years. They’re your best bet, if you’re looking for a map. They abide within the old root-house here on Layers’ Edge. 

Echo the Astrologer is a well known lass, indeed. She’s a scientist turned fortune teller. She works in her Inverted Observatory out over the lake, charting stars to see the future. I'd say there’s not much sense in it, but most folk seem to disagree. If you want to know your destiny… most folk would turn to her. 

My friend Roger the Automaton is the first I’d recommend, though the last most folk would seek. He doesn’t travel far from The Lone Lighthouse. He doesn’t speak much at all. He may not have much for directions, but certainly he’d listen. 

Take that with what you may. Is there one that strikes your fancy? If indeed, I can send you on your way. I’m not much for directions, but I know how to find my friends. 

MAY 
+ I could use a map. The Cartographer it is!
    -> nineBAA
+ Echo sounds like she’d know what I should do. 
    -> nineBAB
+ I’d like to talk to Roger.
    -> nineBAC
+ I think I’ll try to find my Counselor myself. 
    -> nineBB
+ Actually, I think I might try fishing, like you said before. 
    -> nineA
    
= nineBAA 
MOONDOG
Aye. I thought that's what you’d say. Finding that old loon is rather simple. Follow this path of floating stones until you reach a weathervane. Disregarding its direction, go whichever way the wind is pointed. From there you won’t be far from the old root-house. 

I wish you luck, my friend. I’ll be seeing you soon.
-> ten 

= nineBAB
MOONDOG
Ha! That’s not what I expected. Still, I wish you luck. The Inverted Observatory isn’t difficult to find. Follow the paths of floating stones until you reach a spiral stair. Travel down thirty flights, then turn around and climb upwards twenty more. The tower should be waiting for you there. 

I wish you luck, my friend. I’ll be seeing you soon. 
-> ten 

= nineBAC 
MOONDOG 
He’ll be glad to see some company. And you won’t have trouble finding him, what with him being stationed at a beacon and all. Just continue to descend until you reach the water. Once you find a boat, it won’t be long til you arrive. 

Tell him I say hello! 
-> ten 
    
= nineBB 
# DIA 
MOONDOG
Aye, suit yourself. The Layers’ Edge will take you as you are. I wish you the best of luck, my friend.
-> ten 

= ten 
# DIR 
May nods. As if they had been listening, the surrounding stones slowly float to form a little path. With a grateful look over her shoulder, May begins her journey across Layers’ Edge. 
-> continue 

= complete 
->-> 

= continue
+ <
    #CLEAR 
    -> script.cover
+ > 
    # CLEAR 
    -> sanctuary.start