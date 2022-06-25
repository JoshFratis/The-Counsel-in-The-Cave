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

#THEME: white
#DEFAULTTHEME: white
#TITLE: THE COUNSEL IN THE CAVE
#TITLE: ACT I, SCENE I
#TITLE: SHILOH HILLS
#DIA 
Late spring, 2016. A field behind Shiloh Hills Elementary School. Berks County. 
#IMAGE: img/shiloh.jpg
#SCENETITLE: SHILOH HILLS
-> one

= one 
#DIR
The curtain rises on a steep green hill covered in clovers. On stage right, tall trees line the edge of a small wood. Below us on stage left, unkempt vegetation grows more wild. 
Between the forest and the brush, a narrow field of clovers rises and falls in a series of steep hills. 
Power lines are strung above. They zig-zag to the distance, anchored by transmission towers, the massive steel lattices that stand out on the hilltops.
Two teenagers, Jason and May, enter the foreground from a gravel path that overlooks the green. They face away from us, looking over the scene. 
-> two 

= two 
#PB
# DIR
* May peers between the slender trees. 
    -> twoO -> twoA
* May looks down over the wild brush below. 
    -> twoO -> twoB
* {sixO >= 1} May looks out at the farmland in the distance.
    -> twoO -> twoC
* {sixO >= 2} May inspects the clovers at her feet. 
    -> twoO -> twoD

= twoO
->->

= twoA 
#DIR 
In the forest’s center, not far from here, is a well kept lawn and a sturdy pavilion for picnic benches. Sidewalk chalk decorates its floor. All around it, gravel walking paths weave between the trees. Some extend further past the forest’s other side, through soccer fields and parking lots, to Shiloh Hills Elementary School. 
#DIA
MAY
Do you remember when we’d play make believe here as kids?
+ When we’d imagine we were pirates, searching for buried treasure?
    The pavillion was our island fortress, and some fallen log our ship? We would draw maps for ourselves in the dirt and pretend we knew where we were going. 
    
    JASON 
    (laughing)
    Of course I remember! How could I forget Captain May-Beard and Scallywag Jason?
    
+ When we’d wander through the woods hunting ghosts?
    We'd barely get ten feet into the trees before we ran out screaming. 
    
    JASON 
    (Laughing) 
    It was in broad daylight, too! And still we'd terrify ourselves. 
    
+ When we’d just dig up rocks and pretend they were fossils?
    And we'd make up names for imaginary dinosaurs?
    
    JASON 
    (laughing)
    Of course I remember! How could I forget 'Jason-osaurus?'
- 
MAY
It’s so strange to think about, about to graduate and all. We’re right here, where we used to play make-believe… making decisions for the real world.
-> two

= twoB
# DIR 
Low tangled trees root from rocky creek-beds. Dense brushes push against one another. Mosquitoes buzz and hum. 
There, May spies an old rowboat split by a twisted vine. 
# DIA 
MAY
Jason, check out that boat. 

JASON
Whoah. Do you think your dad could fix it? You’re still helping him on the weekends, right?

MAY
Yeah. I never would have thought I’d be spending my last weeks of high school fixing boats with my dad, but I like it. He needs the help, too. 
That thing down there is pretty far gone. It’s beyond repair. Still, I can see him lugging that old thing back to the shop. He’ll put hours into patching that shattered hull, for no good reason other than to find what he imagines it could be. 
He’s like that.
-> two

= twoC
# DIR 
May looks out at the farmland in the distance. 
# DIA
JASON
That’s good old Berks County. Nothing but silos and cows for company. 

I can’t wait to get out of this place. I couldn’t spend another year in the suburbs. 

MAY
+ You’re not a fan of Berks County? 
+ I don’t think it’s all that bad. 
-
JASON
I’ve got places to be, May! I need to see the world. 
No college around here is any good for music. But in a few months I’ll be on my way to the city, where it really happens. Then this time next year, I’ll be playing with the best.
-> two

= twoD
# DIR 
The field exists in some space between the lofty wooded park and the unkempt abandon. It’s kept clean of trees for the power lines above, but is not without thick washes of long kept clovers. Your feet would sink down if you stepped into the field, leaving tracks of trampled clovers where you went. 
# DIA 
MAY
This hill is so different each time we’re here. It only took two weeks for every one of these clovers to come in. 
But can you see the parallel paths we took two weeks ago? They’re still there, pressed into the field.
+ Things change so quickly, don’t they?
+ I wonder how long that path will last once we’re gone.
-
JASON
I can’t believe graduation is only… What, six weeks away?

MAY 
Yeah. I'm not ready yet. 
Do you want to take this path again? 

JASON 
Sure. 
-> three



= three
#PB
#DIR 
The two step down onto the path they trod before, following beneath the power lines. They briefly disappear from sight before breaching the next hilltop further upstage. 
-> five 

= five
#DIA 

-> six

= six 
#PB
{
    - sixO == 0: May pauses for a moment to take in the land surrounding her.
    - sixO == 1: Jason notices May has stopped following.
    - sixO == 2: Jason lingers on the landscape.
    - sixO == 3: Jason wonders what May's thinking. 
}
* May spots a rusty trusk nestled in the underbrush. 
    -> sixO -> sixA
* May stops to look at a spotty couch left by the forest's edge. 
    -> sixO -> sixB
* {sixO >= 1} May sets her eyes on the transmission tower.
    -> sixO -> sixC
* {sixO >= 2} May sees two signposts sticking up from atop the hill. 
    -> sixO -> sixD

= sixO
->-> 

= sixA
# DIR 
Nestled in the dense thicket that nests between two hills, a pickup truck sits crooked. It has no tires or windshield. It’s colonized by rust, so much so that its blue paint can barely be seen beneath a thick coat of orange.
# DIA 
MAY
It reminds me of Saige’s truck. 

JASON
It honestly could be. Her’s is nearly as rusty as that pile of junk. 
Do you know what she’s doing with her’s while she’s teaching in Bolivia?

MAY
I’d think she’d just keep it at her dad’s.
Why, you want to drive it? 
+ She’d kill you. 
+ You’d have to get it to start, first.
-
JASON
No, no! I was just thinking how rusty it’ll be once she finally gets back. A year is a long time.

MAY 
+ Yeah. I’m sad that she’s leaving. 
+ I’m so excited for her. 
--> six

= sixB
# DIR 
The worn-out couch sits sheltered in the shade, though it's clearly seen better days. It faces west, as if it's owner would sit here to watch the sun set. 
# DIA 
MAY
Do you remember the time we tied a sofa to your car?

JASON
Of course I do. That was one of my best ideas yet.

MAY
It was not a good idea! You drove it right down Penn Ave! 

JASON
Hey, you went for it!

MAY
+ We nearly got arrested!
+ It almost caught on fire!
-
JASON
And now we have a great story to tell when we go to college!
MAY 
You mean that you have a great story to tell. 
+ I, however, am left with lingering trauma. 
+ I don't know if I'm going to college. 
--> six

= sixC
# DIA
JASON
When I was little, I would look out the window and see those towers. 
# DIR 
Jason motions to a transmission tower in the distance.
# DIA 
JASON
And I thought they were scarecrows for the cornfields.
# DIR 
Jason holds out his arms in a T like a scarecrow with his shoulders scrunched up to his ears. He makes a goofy face. May laughs.
# DIA 
JASON
Do you know what they’re called? Barely anyone knows their name since most people never need to talk about them.

MAY
+ My uncle worked on them. They’re called transmission towers.
+ They remind me of a sculpture I once saw in Swatara State Park
    It was this massive mobile hidden in the forest. When the wind blew, it would make the most beautiful music. Like overgrown wind chimes. Or an organ set on the loose.
    ++ My dad and I found it together by following the sound.
        We'd do that, him and I. Always sneaking off to chase down curiosities.
    ++ I found it on my own, wandering the forest past midnight. 
        I couldn’t sleep with the sound. Not until I found out what it was. 
-
JASON
You know, to me they’ve always looked like titans. As if at night, they put down their wires. And instead of staying here, wander the earth in search of something greater.

MAY
Let's go up there. I want to get closer. 
#DIR 
The two continue on, climbing towards the tower. 
-> seven -> eightA

= sixD
# DIR 
Stuck crooked in the clovers is a rusty metal rail, to the top of which is pinned a rectangular sign in black and white. Just past it is another just like it, leaning to the other side. May can't make out what either say from here. 
# DIA 
MAY 
Let's go further. I want to see what's up there. 
#DIR 
The two continue on, climbing to the signs. 
-> seven -> eightB

= seven
#PB
JASON
You still haven’t thought any more about Lehigh? It’s a great university. And I’m so jazzed you got accepted.

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
Yeah. I don’t know what to do. 
->->

= eightA
The two reach the transmission tower’s legs are made of a latticework of welded metal. Its steel boots are buried in the clovers, rooted here like a tree. Above them, the weight of lofty power lines is hung on strong steel arms. 
-> nine

        
= eightB
# DIR 
Beside the transmission tower, a government sign stands vigilant in the center of the path. 

"ONE WAY" it reads, pointing to the left. 

Just a few feet beyond it is another just like it. Only this second sign points to the right. 
# DIA 
JASON 
That's hilarious. 
-> nine


= nine 
# DIR 
The two sit side by side in the clovers. 
# DIA 
JASON
I wish I could help you make your decision. 

I know it sucks, before you figure out what you want to do after you graduate. 

MAY
+ You’re already helping, Jason. 
    # DIR 
    Jason frowns. He doesn’t believe her yet.
+ It’s not really something that can be helped, is it?
    # DIR 
    Jason frowns. He’s thinking of a solution.
-
JASON
Have you met with the school guidance counselor? They’re strangely reclusive, but good to talk to if you can manage to find them. Before I knew what I wanted, they helped me. 

How about this? Tomorrow, I’ll take you to see them. It’s a bit of a maze, finding their office. But I know the way. We’ll ask them for advice. They’ll help you decide what to do.
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
Now we watch them sit there– One, Two beneath the power lines, their backs to the signposts forbidding them go further. 

Jason leans back to look up into the power lines. 

May’s eyes scan the distance while she tears at clovers. 
-> continue 

= continue
-> DONE



