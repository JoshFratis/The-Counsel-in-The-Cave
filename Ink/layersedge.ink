=== layersedge ===
-> start 

= start
VAR sixAOVAR = 0 
VAR sixBOVAR = 0 
VAR sixCOVAR = 0 

VAR sevenConditionOne = false
VAR sevenConditionTwo = false

VAR MayWasPoliteToMoondog = false
VAR MoondogMovedToMay = false

# THEME: white
# DEFAULTTHEME: white
# TITLE: THE COUNSEL IN THE CAVE
# TITLE: ACT II, SCENE I 
# TITLE: LOST ON LAYERS' EDGE
# PN: 42
-> one

= one 
# DIR 
May tumbles down through rows of smoke, turning over and over until she loses all sense of direction. She glimpses dizzy visions of her past and of her future. 

She sees herself and Jason searching their school in vain for their missing guidance counselor. She sees the clues come to light.– They point to something magical at play. May watches as she wanders off alone, searching for some secret world hidden beneath the school. She sees a portal open up before her. She sees herself enter. 

May passes by her memories. She closes her eyes, unable to consider what she’s seen. She falls down, further down into The Layers. 

Blackout. 

By a single spotlight, we see May alone. She’s resting on a wide slab of stone. A jagged chunk of earth paved with cobblestone, like a broken piece of road. As she wakes, the lights rise. Together we see where May has arrived. 

The stone is suspended in a sea of clouds. They drift through slanted rays of multicolored light. There’s no land below, nor clear sky above. All around, paths of floating stepping stones arc into the distant mists. Glowing globes of gas float along the air, creating little constellations close at hand. 

Aboard one small stone, not far away, sits an old man (MOONDOG). He holds a fishing rod. His line is cast into a colored cloud. 
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
The old man overhears. He turns to May to greet her. 
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
    Moondog’s eyes alight. At once, he steps his floating stone, as if he wished to cast himself into the clouds. But another floating stepping stone appears beneath his feet. He continues this way to where May stands, walking on a hardly-formed path. He leaves his rod behind and it remains in place, floating in the air.
    ~ MoondogMovedToMay = true
    # DIA 
    MOONDOG
    Aye, Layers’ Edge. A border between worlds! The one above you come from…
    # DIR 
    Moondog motions vaguely upward. 
    # DIA 
    MOONDOG
    And The Layers below. 
    # DIR 
    Moondog makes wide sweeping gestures all around him.
    # DIA 
    MOONDOG
    Take a look around, my friend. 
+ {MayWasPoliteToMoondog == false} It’s good to meet you too. 
    ~ MayWasPoliteToMoondog = true
    Moondog smiles, glad to see another friendly face.
    -> four 
+ What do you fish out here in the clouds?
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
# DIR 
May peers into the bright abyss below. 

It's like looking in a lake, where one’s view shifts between the mirrored sky and darkened depths below the surface. Here, layer upon layer of such surfaces intersect one another. They’re stacked down, further down into infinity. Each one reflects a unique reality.

{
    - MoondogMovedToMay == false: Moondog’s eyes alight. At once, he steps his floating stone, as if he wished to cast himself into the clouds. But another floating stepping stone appears beneath his feet. He continues this way to where May stands, walking on a hardly-formed path. He leaves his rod behind and it remains in place, floating in the air.
        ~ MoondogMovedToMay = true
}
 -> six 
 
 = six 
 // Requires player to fulfill two conditions to move on 
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
# DIA 
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

Things often go awry where The Layers intersect. Here, The Subterranean Sea crashes against The Fields of Speaking Reeds. From the confluence comes disaster for any would-be conqueror. 
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
    Oh, I did when I was younger. But those days have long since passed. Now I’m content to let The Layers be what they may. I’ve learned to let the fish find me, so to speak. That’s what I’d recommend, if you wish to find your way within The Layers.
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