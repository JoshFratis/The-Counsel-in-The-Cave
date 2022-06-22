-> shiloh.start
=== shiloh ===
VAR MayMoved = false
VAR MayMovedFromSouthDakota = false
VAR MaySkippedGrade = false
VAR MayGotLicenseLast = false
VAR MayIsShort = false
VAR MayHasSpider = false
-> start

= start
#IMAGE: img/shiloh.jpg
#THEME: white
# DEFAULTTHEME: white
#TITLE: THE COUNSEL IN THE CAVE
#TITLE: ACT I, SCENE I
#TITLE: SHILOH HILLS
-> one

= one 
#DIR 
We look out over a steep green hill covered in clovers. To our right, tall trees line the edge of a small wood. In the forest’s center, not far from here, is a well kept lawn and a sturdy pavilion for picnic benches. Sidewalk chalk decorates its floor. All around it, gravel walking paths weave between the trees. Some extend further past the forest’s other side, through soccer fields and parking lots, to Shiloh Hills Elementary School. 

Below us on the left, unkempt vegetation grows more wild. Low tangled trees root from rocky creek-beds. Dense brushes push against one another. Mosquitoes buzz and hum. This jumbled brush carries out to a low fence line, barely able to be seen as it is, flooded in leaves. Beyond this, the distance is occupied by rolling squares of farmland.   

Between the forest and the brush, a narrow field of clovers falls dramatically up and down in a series of steep hills, formed by man-made creeks that run right to left across the stage. They guide runoff from the forest to the reservoir below, hidden somewhere in the brush. 

Power lines are strung above the hills. They zig-zag into the distance, anchored by transmission towers, massive lattices of steel that stand out on the hilltop. 
 
The field exists in some space between the lofty wooded park and the unkempt abandon. It’s kept clean of trees for the power lines above, but is not without thick washes of long kept clovers. Your feet would sink down if you stepped into the field, leaving tracks of trampled clovers where you went. 

Two teenagers, Jason and May, enter the foreground from a gravel path that overlooks the green. Jason wears baggy jeans and an old striped shirt. May wears shorts and a heavy work shirt. They face away from us and look into the distance. 

-> two 

= two
#DIA
JASON
Check out all these clovers! How they flood the hill? They’re different each time we come here, you know. Remember last time? It was only dry grasses? Those huge dragonflies? Now there are all these little round flowers.

But look! You can still see the parallel paths we took two weeks ago, trampled into the wash.

MAY
+ Things change so quickly, don’t they? 
+ I wonder how long the path will last once we’re gone. 
--> three 

= three 
#THEME: red
JASON
I can’t believe graduation is only… What, six weeks away? 

It seems like yesterday I was walking down here with my kindergarten class. On days like these, days close to summer, we’d take breaks in the afternoons to come down from the school. 

Didn’t you have Ms. Owens too? I don’t remember you being there. 

MAY
+ I skipped a grade. I’m a year younger than you.
    ~ MaySkippedGrade = true
    -> threeB ->
+ I moved here in middle school, remember? 
    ~ MayMoved = true
    #THEME: lime
    ++ It was hard making new friends. 
    ++ It was good to get a fresh start. 
- 
JASON
Something about those days has always stuck with me. Each year, there comes a day in spring when I remember the feeling. On those days, I can’t do anything but look out the window and wait to go outside.
-> four 

= threeA
+ I was the last one to get my license, remember? 
    ~ MayGotLicenseLast = true
+ I was always the shortest kid in class for a while. Still am.  
    ~ MayIsShort = true
-->->

= threeB
 #THEME: lime
+ I always hate telling people that. 
+ I usually forget about it too. 
-->->

= four 
#DIR 
Jason points to a transmission tower in the distance. 
#DIA 
JASON
#THEME: red
Do you know what they’re called? No one has a name for them, since no one ever needs them. They just stand there. 

MAY
+ I think they’re called transmission towers. 
+ They remind me of a sculpture I once saw in a state park. 
	A piece of modern art. 
	/*
        ++ It didn’t look like it belonged there. 
        ++ I liked seeing it. 
    */
- #THEME: lime
JASON
They’ve always looked to me like titans. As if at night, they put down their wires. And instead of staying here, wander the earth in search of something greater. 
#DIR 
The two step down onto the path they trod before, following beneath the power lines. They briefly disappear from sight before breaching the next hilltop further upstage. 
-> five 

= five
#DIA 
JASON
I can’t wait to get out of this place. I couldn’t spend another year in the suburbs. 

MAY
+ You’re not a fan of Berks County? 
+ I don’t think it’s all that bad. 
    {
        - MayMoved == true: 
            -> fiveA ->
    }
- #THEME: red
JASON
I’ve got places to be, May! I need to see the world. 
No schools around here are any good for music. But in a few months I’ll be on my way to the city, where it really happens. Then this time next year, I’ll be playing with the best.
-> six

= fiveA 
JASON
(smiling) That’s just cause you moved here from South Dakota. This place is a metropolis compared to South Dakota!
~ MayMovedFromSouthDakota = true
MAY
+ Hey, I liked it there! 
+ You’re right. Anywhere is better than South Dakota. 
-
Jason laughs, shakes his head, and looks out at the distance. 
->->

= six 
# THEME: lime
{
    - sixO == 0: The two pause for a moment. They take in the land around them.
    - sixO == 1: Jason notices May has stopped following.
    - sixO == 2: Jason lingers on the landscape.
    - sixO == 3: Jason wonders what May's thinking. 
}
* With her eyes, May follows the long fence line. 
    -> sixO -> sixA
* May stops to take in the unnumbered squares of farmland. 
    -> sixO -> sixB
* {sixO >= 1} May points to a small silo in the distance.
    -> sixO -> sixC
* {sixO >= 2} May spots a rusty truck nestled in the brush. 
    -> sixO -> sixD
+ {sixO == 0} Then they move on.
    -> seven
+ {sixO >= 1} The two continue further.
    -> seven 

= sixO
->->

= sixA 
#DIR 
We see a simple chain link fence at the bottom of the hill, beyond low bushes that crowd the small stream-bed. It drives a long line across the landscape. Bundles of little trees press up against one side of the fence. 
#DIA 
MAY
+ It all looks like one wave, caught up before its crashing.  
    /* 
        ++ I haven’t been to the beach in forever. 
        ++ I wonder what a frozen wave would look like. 
    */
+ The fence is like a fishing net, only this one’s catching trees.
    /*
        ++ Better than killing fish, I guess. 
        ++ My dad and I used to go fishing every once in a while. 
    */
+ This reminds me of those old photos of crowded baseball games. 
    /*
        ++ It’s weird how important baseball used to be. 
        ++ My dad and I used to go to games every once in a while. 
    */
-
{
    - not sixE: -> sixE
    - else: -> six
}

= sixB 
#DIR
Small squares of tilled farmland are patched into the distant hills. Each one's shade is a different green or yellow. 
#DIA 
MAY
+ It’s like a quilt for giants. 
	See where the squares meet each other? 	
    
    JASON
    Whoah. Imagine a sleeping giant underneath all this. 
    That’d make things more interesting. 
    
+ It looks like a coloring book.
	See where the squares meet each other? 	
	
	JASON
    Or a paint-by-numbers. 
    I bet we could find the numbers. You think they’re mowed into the fields, like crop circles in alien movies?
-
{
    - not sixE: -> sixE
    - else: -> six
}
--> six 

= sixC 
# DIR 
Beyond the dense thicket at the bottom of the hill, a short white silo stands against the blue sky.
# DIA 
MAY 
Jason, do you see that silo? It's beautiful. 
# DIR 
Jason pauses. He stands beside her, watching. 
# DIA 
JASON
See May, this is why I love you. 
I never would have thought, out of all the things to see, to pick that. But you’re right. It’s kind of beautiful. It is. 
-> six 

= sixD 
# DIR 
Nestled in the dense thicket that nests between two hills, a pickup truck sits crooked. It has no tires or windshield. It’s colonized by rust. 
# DIA 	
MAY
+ It’s like a little copper-colored dragon. 

    JASON
    I was just about to say the same thing! We really need to play some D&D, May. You’d be great at it. 
    
+ It reminds me of the painted desert. 

    JASON
    I’ve never been. But it’s on the list. 
--> six 

= sixE 

-> six

= seven
JASON
You still haven’t thought any more about Lehigh? 

MAY
+ No. Whenever I do, I get this terrible feeling. So I don’t. 
    Even though I should be happy to have been accepted. 
    It’s like the future is haunted. 
+ You’ve got it backwards, Jason. I haven’t stopped thinking about it since I got accepted. 

    It’s like the future is haunting me. 
-
JASON
But I know what you mean when you say you’re still not sure. Even though it’s a good school and all. 

MAY
+ Yeah. I don’t know what to do. 
--> eight 

= eight
{
    - not eightO:
        The two reach the feet of the transmission tower. Above them, the weight of lofty power lines is hung on strong steel arms. 
        
        Beside the transmission tower, a government sign stands vigilant in the center of the path. 
}
# DIR 
* May reads the sign. 
    -> eightO-> eightA
* May approaches the tower. 
    -> eightO-> eightB
+ {not (eightA and eightB)} May sits down on a fluffy bed of clovers. 
    Jason follows suit. 
    -> nine 
+ {eightA and eightB} Then she sits down on a fluffy bed of clovers. 
    Jason follows suit. 
    -> nine 
    
    
= eightO 
->->
    
= eightA 
# DIA 
“Danger. 
Do not go beyond this point
without 
adult supervision. 
Adolescent tresspassers 
have been known to get lost.”
{
    - not eightB: 
        -> eightAA 
    - eightB: 
        -> eightAB
}

= eightAA 
# DIR 
Jason circles the sign, then gasps. He leans in close. 
# DIA 
JASON
May! Check out this spider web! Look how far it stretches, all the way from the tower over there. Isn’t that incredible? 

This little spider, guided by adopted accidents, the accumulation of chance, is next to God in its creation. 

I wonder where it went. 
-> eight 

= eightAB 
# DIR 
A little strand of spider silk is sticking to the sign. May finds the spider crawling up her arm. 
+ May lets the spider find its way into her shirt pocket. 
    ~ MayHasSpider = true
+ May gently returns the spider to its web. 
--> eight

= eightB 
# DIR 
The tower’s legs are made of a latticework of welded metal. Its steel boots are buried in the clovers, rooted here like a tree. 

{
    - not eightA: 
        -> eightBA
    - eightA: 
        -> eightBB
}

= eightBA 
# DIR 
Jason circles the transmission tower, then gasps. He leans in close. 
# DIA 
JASON
May! Check out this spider web! Look how far it stretches, all the way from the signpost there. Isn’t that incredible?

This little spider, guided by adopted accidents, the accumulation of chance, is next to God in its creation. 

I wonder where it went.
-> eight 

= eightBB
# DIR
The spider web is set in a corner of the tower’s frame. May finds the spider crawling up her arm. 
+ May lets the spider find its way into her shirt pocket. 
    ~ MayHasSpider = true
+ May gently returns the spider to its web. 
--> eight

= nine 
# DIA 
JASON
I wish I could help you make your decision. 

I know it sucks, before you figure out what you want to do after you graduate. 

MAY
+ You’re already helping, Jason. 
+ It’s not really something that can be helped, is it? 
-
JASON
Have you met with the school guidance counselor? They’re strangely reclusive, but good to talk to if you can manage to find them. Before I knew what I wanted, they helped me. 

How about this? Tomorrow, I’ll take you to see them. It’s a bit of a maze, finding their office. But I know the way. We’ll ask them for advice. They’ll help us figure this out. 
MAY
+ If you think it’ll help… sure, we can try tomorrow.
+ Really? Can we see them now? 
	
    JASON
    # INF
	(laughing)
	# DIA 
	It’s Sunday, May! They’re not there right now! But we can go tomorrow. 
--> ten 

= ten 
# DIR 
Now we watch them sit there– One, Two beneath the power lines, their backs to the signpost forbidding them go further. 

Jason leans back to look up into the power lines. 

May’s eyes scan the distance while she tears at clovers. 
-> continue 

= continue
-> DONE



