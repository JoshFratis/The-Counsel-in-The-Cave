=== fishermanFinaleTwoTogether ===
-> start 

= start
-> one 

= one 
# PB
# DIR 
May and Jason turn to each other. 

# DIA 
JASON
Well, May. I guess this is it. 

MAY
Are you ready? 

JASON
+ Thanks to you, I am. 
+ Not really. But that’s okay. 
--> two 

= two 
MOONDOG
No use loligagging! I’ve got places to be!

MAY
+ Sorry, Moondog!
	We appreciate your angular arts! 
	
    JASON
    “Angular?”

+ Where in the world do you have to be, Moondog? 
    Time doesn’t even exist here. 

- MOONDOG
(snorts)
Fishing. 
+ Now quit your yammering and hop aboard. 
+ Now quit second-guessing. You’re both ready for this. 
-
{
    - MoondogFishesFireEscape: -> threeA ->
    - MoondogFishesGondola: -> threeB ->
}
-> continue

= threeA
# PB
// FIRE ESCAPE
May leads the way. She grabs ahold of the spiral fire escape.
{
    - JasonEntersLayers && MayEntersLayers == true: -> threeAA ->
    - JasonGraduates && (MayGraduates || MayGoesHome) == true: -> threeAB ->
}
->->

= threeB
# PB
// GONDOLA
May leads the way. She climbs aboard the balloon-less basket. 
{
    - JasonEntersLayers && MayEntersLayers == true: -> threeBA ->
    - JasonGraduates && (MayGraduates || MayGoesHome) == true: -> threeBB ->
}
->->

= threeAA
// FIRE ESCAPE TO LAYERS
After one final look into the mundane world above, May sets her sights on the unknown below. She waves goodbye to the fisherman, knowing full well she’ll see him soon. Jason offers Moondog a silly salute. 
-> fourB

= threeAB 
// FIRE ESCAPE TO SURFACE
After one final look out over Layers’ Edge, the two begin their return to the surface. May gives Moondog an excited smile as they pass him by. Jason offers a silly salute. Together, they continue to the surface.
-> fourA

= threeBA
// GONDOLA TO LAYERS
After one final view of the mundane world above, May sets her sights on the unknown below. She waves goodbye to the fisherman, knowing full well she’ll see him soon. Jason climbs aboard. He gives Moondog a silly salute, and the fisherman lets out his line. 
-> fourB

= threeBB
// GONDOLA TO SURFACE
After one final look out over Layers’ Edge, the two begin their return to the surface as Moondog reels in the basket. May gives Moondog an excited smile as they pass him by. Jason offers a silly salute. The fisherman retrieves his hook and the basket floats away without it.
-> fourA

= fourA
// SURFACE
Jason sets his sights on the other side of graduation, He’s ready for his journey to the distant city. 
{
    - MayGoesHome: -> fourAA ->
    - MayGraduates: -> fourAB ->
}
-> continue

= fourAA 
// MAY GOES HOME
May’s long journey home has finally come to an close.
->->

= fourAB
// MAY GRADUATES
May readies herself for the world beyond her home. She's finally reached the end of her path to graduation. 
->->

= fourB
// LAYERS
Together, the two descend into the Layers. Their quests to find themselves have only just begun.
-> continue

= complete 
->->

= continue 
+ <
    # CLEAR
    -> complete -> script.cover
    
    
    
    
    