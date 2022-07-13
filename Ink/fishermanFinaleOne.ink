=== fishermanFinaleOne ===
-> start 

= start 
~ MoondogFishesFireEscape = false
~ MoondogFishesGondola = false
-> one 

= one 
# PB
# DIA 
MAY
I’m glad.

JASON
Me too. It's a relief to have finally decided, if only to keep asking questions. But how will <>
{
    - JasonEntersLayers == true:
        {
            - MayEntersLayers == true: we
            - else: I 
        }
        <> enter The Layers 
    - else: 
    {
        - MayEntersLayers == true: I
        - else: we 
    }
        <> get back to The Surface
}
<> from here? 
{

    - JasonEntersLayers == true:
        # DIR 
        Jason looks down through the well of star-light, into the bright abyss beyond. It’s entirely formless, without even <>
        {
            - JasonWanderedCave: steps
            - JasonWanderedForest: roots
            - JasonWanderedCity: streets
        }
        <> to use. 
    - else: 
        # DIR 
        Jason gazes up into the beam of star-light, and sees the reflected band room. It’s suspended far above, entirely out of reach.  
}

# DIA 
MAY
Oh, you can trust me, Jason. I didn’t come without a plan. 
# DIR 
May points to the edge of the translucent sky-light. Sitting on the rim, the border between worlds, is a curious figure, equipped with a fishing rod. 

# DIA
MOONDOG
Hello there! Finally made up your mind, have you? 

MAY
Jason, meet my friend Moondog. 

JASON
Hello? 
-> two 

= two 
# PB
MOONDOG
+ [(to Jason) The pleasure’s all mine, boy.]
    (to Jason) 
    The pleasure’s all mine, boy.
+ [(to May) This is the shrimp that came here to ‘save’ you?]
    (to May) 
    This is the shrimp that came here to ‘save’ you?
	
    MAY
    (laughing)
    Yes, Moondog. He meant well. Now would you quit scaring him and drop us a line?
    
    MOONDOG
    Yes, ma’am. 
--> three 

= three 
# DIR 
We see a silver line fall through the column of starlight, through the dark theater to the bright abyss below. From the mystery of the Layers, the fisherman retrieves…
+ A black spiraled fire escape. 
    -> threeA ->
+ The gondola of a hot air balloon. 
    -> threeB ->
--> four 

= threeA 
~ MoondogFishesFireEscape = true
Its matted metal seems strange, industrially welded into such a smooth curve. It reminds May of the transmission towers and powerlines hung above Shiloh Hills. It creaks to a stop in front of Jason and May. 
->->

= threeB
~ MoondogFishesGondola = true
The basket seems strange in the absence of a balloon. It floats into the theater as if it never needed one.
It hovers in front of Jason and May
->->

= four 
# DIA 
MOONDOG
Well? What’re you waiting for?
-> continue 

= complete 
->->

= continue 
-> complete ->
{
    - JasonEntersLayers == MayEntersLayers: 
        -> fishermanFinaleTwoTogether
    - else: 
        -> fishermanFinaleTwoApart
}




