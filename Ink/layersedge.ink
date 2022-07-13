=== layersedge ===
-> start 

= start
VAR sixAOVAR = 0 
VAR sixBOVAR = 0 
VAR sixCOVAR = 0 

VAR sevenConditionOne = false
VAR sevenConditionTwo = false

VAR MayWasPoliteToMoondog = false

~ MayGotFishingPole = false
~ MayCaughtCrowsNest = false 
~ MayCaughtSocks = false 
~ MayCaughtFlyingFish = false 

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

She sees herself and Jason searching their school in vain for their missing guidance counselor. May watches as she wanders off alone on her counselor's trail, searching for some secret world hidden beneath the school. She sees a portal open up before her. She sees herself enter. 

May passes by her memories. She shuts her eyes tight, unable to consider what she’s seen. She falls down, further down to Layers' Edge. 

Blackout. 

By a single spotlight, we see May alone. She’s resting on a jagged chunk of earth, the top paved smooth with cobblestone like a broken piece of road. The lights rise as she wakes. Together we see where May has arrived. 

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
    I’m flattered by your asking, but I can’t be sure how helpful I would be. I’m just a simple fisherman, you see. And I’m quite lost myself! In fact, I’d say round here you’d find few honest folk who wouldn’t say the same. No, not here. Not on Layers’ Edge. 
    
    The name’s Moondog, by the way. Pleasure to meet you.

+ Tell me where I am. What do you want with me? 

	MOONDOG
    Calm yourself, friend! There’s no cause for alarm. I’m just a simple fisherman, an old man past the years he’s owed. My name is Moondog, of Layers’ Edge. Pleasure to meet you.
--> four 

= four 
# DIA 
# PB
MAY
+ What do you mean, 'Layers' Edge?'
    -> fourA ->
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
    # DIR 
    Moondog smiles, happy to see another friendly face.
    -> four 
+ What do you fish out here in the clouds?
    -> fourA ->
    # DIA 
    MOONDOG
    Oh, many curiosities. Once, I caught a window frame that led to somewhere else. When I put my eye to it, I could see through to another land. 
    
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

= fourA 
# DIR
Moondog’s eyes alight. At once, he steps off his floating stone, as if he wished to cast himself into the clouds. But another floating stepping stone appears beneath his feet. He continues on this hardly-formed path to where May stands. He leaves his rod behind and it remains in place, floating in the air.
->->

= five 
# DIR 
May peers into the bright abyss below. 

It's like looking in a lake, where one’s view shifts between the mirrored sky and darkened depths below the surface. Here, layer upon layer of such surfaces intersect one another. They’re stacked down, further down into infinity. Each one reflects a unique reality.
 -> six 
 
 = six 
 # PB 
 # DIR 
 // Requires player to fulfill two conditions to move on 
 // One: See all three observations of one of three categories (Layers' Edge, The Layers, Moondog)
 // Two: See at least one observation from the sixB category (The Layers)
+ {sixAOVAR == 0} May tries to reach a little globe of gas, floating close at hand.
    -> sixAO -> sixAA ->
+ {sixAOVAR == 1} May waves her hand into a colored cloud, wondering what they’re made of.
    -> sixAO -> sixAB ->
+ {sixAOVAR == 2} May looks on the landscape as if it were the surface of a lake, reflecting light and color.
    -> sixAO -> sixAC ->
+ {sixBOVAR == 0} May can see flying manta rays passing between islands in the sky.
    -> sixBO -> sixBA ->
+ {sixBOVAR == 1} A world below reflects a field of purple grass atop towering sea-cliffs. 
    -> sixBO -> sixBB ->
+ {sixBOVAR == 2} As deep as she can see, May finds a lonely lighthouse on an inky sea.   
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
Oh, I tried to let him go. But he wouldn’t leave me be! He followed me around. I couldn't fish in peace!

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
I remember an old empire staked its claim atop those cliffs. Now of them you won’t hear more than mention. Save from the speaking reeds that echo calls of dead men. They're the man-high grasses that color the cliffs purple. 

Things often go awry where The Layers intersect. There, The Subterranean Sea crashes against The Fields of Speaking Reeds. From the confluence comes disaster for any would-be conqueror. 
->->

= sixBC 
# DIA 
MOONDOG
Aye! The Subterranean Sea of which I speak! When The Lonely Lighthouse goes dark, the fish begin to glow. Some say they look like stars. 

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
I can’t imagine fishing up my Counselor...
+ But I think you’re onto something, Moondog. I’ll give it a try.
    -> nineA 
+ I can’t wait for them to come to me. I'll have to seek them out. 
    -> nineB 

= nineA
~ MayGotFishingPole = true
MOONDOG
Aye. I’d be glad to have another angler here on Layers’ Edge. I think I know an artifact that may be of some use. 
# DIR 
Moondog gives a little whistle and his rod returns to him. Then he reels it in. On the end of the line, another fishing rod is hooked! This he gives to May. 

May takes the rod. She easily casts her line into a nearby cloud. 

It's not long before she feels a tug. 
+ May draws a crow's nest from the depths. 
    ~ MayCaughtCrowsNest = true
    -> nineAA ->
+ May has caught a pair of bright striped socks.
    ~ MayCaughtSocks = true
    -> nineAB ->
+ May has hooked a giant flying goldfish by its harness. 
    ~ MayCaughtFlyingFish = true 
    -> nineAC ->
- 
# DIA 
MAY 
Thanks for your help, Moondog!

MOONDOG 
Don't mention it, kid. You're well on your way! 
-> continue 
    

= nineAA
# DIR 
The mast reaches down into the cloudz. The basket meets May's feet. It leans and creaks. 
# DIA 
MOONDOG 
Well, what're you waiting for? The Layers have given you a gift! This seems to be a fine ship!

MAY 
You think this will take me where I want to go? 

MOONDOG 
On that, I can't be sure. But you stopped to listen to The Layers. I'd regard their answer carefully. This seems as good a path as any, does it not? 

MAY 
I guess you've got a point. 

# PB 
# DIR 
May steps aboard the sturdy crow's nest. Almost instantly it begins to lean away, as if its hidden ship had launched into an unseen sea. It begins a journey across Layers' Edge. 

May turns back to wave goodbye to Moondog. 
->->

= nineAB 
# DIR 
They quickly hop off the hook and dance a circle around May's ankles. She watches as they leap from one stepping stone to another, beginning their escape through Layers' Edge. 
# PB 
# DIA 
MOONDOG 
Well, what're you waiting for? The Layers have given you a gift! After that catch! 

MAY 
(startled from her stupor)
Right! 
# DIR 
May leaps after the pair of rogue socks, but not without turning to say a brief goodbye. 
->-> 

= nineAC 
# DIR 
It circles May and Moondog, awaiting a command. 
# PB 
# DIA 
MOONDOG 
Well, what're you waiting for? The Layers have given you a gift! This appears to be a fine beast!

MAY 
You think this fish will take me where I want to go? 

MOONDOG 
On that, I can't be sure. But you stopped to listen to The Layers. I'd regard their answer carefully. She seems as good a guide as any, does she not? 

MAY 
I guess you've got a point. 
# PB 
# DIR 
May reels in the floating fish and climbs aboard its saddle. Its scales are shining in the multicolored light. Almost instantly it begins to swim away, pulling May along on Layers' Edge. 

May turns back to wave goodbye to Moondog. 
->-> 

= nineB
# DIA 
Would you know where I should start? If I'm looking for my Counselor?

MOONDOG 
Nay, my directions are no help. I'm rather estranged from the ways of navigation. 

MAY 
Then I guess I'll have to find them on my own. 

MOONDOG
Aye, suit yourself. The Layers’ Edge will take you as you are. I wish you the best of luck, my friend.

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