=== shiloh ===
-> start

= MAY 
# DIA 
MAY 
->->

= JASON 
# DIA 
JASON 
->->

= start
VAR shilohTwoO = 0 
VAR MaySawBrush = false 
VAR MaySawForest = false 
VAR MaySawFarmland = false
VAR MaySawClovers = false
VAR MaySawObelisks = false

VAR shilohSixO = 0
VAR MaySawTruck = false 
VAR MaySawCouch = false 
VAR MaySawWheel = false
VAR MaySawMemory = false
VAR MaySawTransmissionTower = false     // these ones here 
VAR MaySawOneWaySigns = false           // aren't currently used

~  shilohTwoO = 0 
~  MaySawBrush = false 
~  MaySawForest = false 
~  MaySawFarmland = false
~  MaySawClovers = false
~  MaySawObelisks = false

~  shilohSixO = 0
~  MaySawTruck = false 
~  MaySawCouch = false 
~  MaySawWheel = false
~  MaySawMemory = false
~  MaySawTransmissionTower = false     // these ones here 
~  MaySawOneWaySigns = false           // aren't currently used

~ MayAndJasonPlayedPirates = false
~ MayAndJasonPlayedGhostHunters = false
~ MayAndJasonPlayedPaleontologists = false

~ MaySaysTheFutureIsHaunted = false
~ MaySaysTheFutureHauntsHer = false

# THEME: white
# DEFAULTTHEME: white
# TITLE: THE COUNSEL IN THE CAVE
# TITLE: ACT I, SCENE I
# TITLE: SHILOH HILLS
# PN: 1
-> one

= one 
#DIA 
Late spring. Six weeks from graduation. 
A field behind Shiloh Hills Elementary School. Berks County. 
#IMAGE: img/shiloh.jpg
#SCENETITLE: SHILOH HILLS
#DIR
The curtain rises on a steep green hill covered in clovers. On stage right, tall trees line the edge of a small wood. Below us on stage left, unkempt vegetation grows more wild. 
Between the forest and the brush, a narrow field of clovers rises and falls in a series of steep hills. 
Power lines are strung above. They zig-zag to the distance, anchored by transmission towers, the massive steel lattices that stand out on the hilltops.
Jason and May enter the foreground from a gravel path that overlooks the green. 
-> two

= two
#PB
{ 
    - shilohTwoO == 0: 
        # DIR 
        As they pass by the hill, May stops to look.
        # DIA 
        MAY 
        Jason, wait up. Take a look at all of this. 
}
# DIR
+ {MaySawBrush == false} May gazes through the thicket growing opaque on our left, wondering what's hidden within.
    -> twoO -> twoB
+ {MaySawForest == false} May peers between slender trees on the right, remembering the many years she's spent here. 
    -> twoO -> twoA
+ {shilohTwoO >= 1} {MaySawFarmland == false} May scans the small squares of tilled farmland in the distance, recognizing her home in the hills.
    -> twoO -> twoC
+ {shilohTwoO >= 2} {MaySawObelisks == false} May looks on the obelisks floating over the forest.
    -> twoO -> twoE
//* twoD -> twoD

= twoO
~ shilohTwoO = shilohTwoO + 1
->->

= twoA 
~ MaySawForest = true
#DIR 
She remembers in the forest’s center, not far from here, there's a well kept lawn and a sturdy pavilion for picnic benches. Sidewalk chalk decorates its floor. All around it, gravel walking paths weave between the trees. Some extend further past the forest’s other side, through soccer fields and parking lots, to Shiloh Hills Elementary School. 
#DIA
MAY
Do you remember when we’d play make-believe here as kids?
+ We’d imagine we were pirates, searching for buried treasure?
    -> twoAA ->
+ We’d wander through the woods hunting ghosts?
    -> twoAB ->
+ All we’d do was dig up rocks and pretend that they were fossils?
    -> twoAC ->
-
MAY
It’s strange to think about, isn't it? We're about to graduate... to be a part of the real world... right here where we used to play make-believe. Isn't that weird?
-> two

= twoAA 
~ MayAndJasonPlayedPirates = true
The pavilion was our island fortress, and some fallen log our ship? We would draw maps for ourselves in the dirt and pretend we knew where we were going. 
    
JASON 
#INF 
(laughing)
#DIA 
Of course I remember! How could I forget Captain May-Beard and Scallywag Jason? 
->->
    
= twoAB
~ MayAndJasonPlayedGhostHunters = true
We'd barely get ten feet into the trees before we ran out screaming. 
    
JASON 
#INF 
(laughing)
#DIA 
It was in broad daylight, too! And still we'd terrify ourselves. 
    
MAY 
#INF 
(laughing too)
#DIA 
You were terrified. I wasn't scared.

JASON 
(doubtfully)
If that's how you remember it. 
->->

= twoAC
~ MayAndJasonPlayedPaleontologists = true
#DIA 
We'd make up our own names for the dinosaurs we discovered?
    
JASON 
#INF 
(laughing)
#DIA 
Of course I remember! How could I forget the 'Jason-osaurus?'
    
MAY 
#INF 
(laughing too)
#DIA 
Even when I was six, I knew that name was dumb.
    
JASON 
#INF 
(laughing)
#DIA 
Yeah, I was pretty self-obsessed. 
->->

= twoB
~ MaySawBrush = true
# DIR 
Little can be seen through the dense canopy of low tangled trees. Beneath the brush, mosquitoes buzz and hum. Resting on a rocky creek bed written with tree-roots, May spies an old rowboat split by a twisted vine.
# DIA 
JASON
Whoah. You think your dad could fix it? You’re still helping him on weekends, aren't you?

MAY
+ It’s strange to be spending my last weeks of high school in the shop with my dad.
    But I’m happy to help. I'm not sure what he’ll do once I leave for college. If I even go to college, that is. 
    
    JASON 
    I don't think it's a bad thing. I miss that kind of time with my mom. 
+ That thing down there is pretty far gone. It’s beyond repair. 
    Still, I can see him lugging it back to the shop. He’d put hours into patching that shattered hull, for no good reason other than to uncover what he imagines it could be. 
    That's just the way he is. I love him for it.
    
    JASON 
    I know what you mean. My mom could get that way too. Determined. 
--> two

= twoC
~ MaySawFarmland = true
# DIR 
Each one's shade is a different green or yellow. Dark lines between the patches lend them the texture of a coloring book. 

# DIA
JASON
Good old Berks County. Nothing but silos and cows for company out here. 

I can’t wait to get out of this place. I couldn’t spend another year in no-man's land. 

MAY
+ I wonder what else I could be if I left. 
//+ I wonder what else I could see if I left.
//    <> What else is out there besides forests and farms, you know?  
    
    <> What I might miss if I don't go to college. I think about it all the time. 
     -> twoCA -> two
    
+ It's not all that bad.
    You don't like driving through the hills, or listening to the crickets?
    
    JASON
    I’ve got places to be, May! I need to see the world. 
    No college around here is any good for music. But in a few months I’ll be on my way to the city, where it really happens. Then this time next year, I’ll be learning from the best. I want to be a great player, May.
    
    Don't you want that, May? College would be perfect for you!
    
    MAY 
    Of course I do. I think about it all the time.
    -> twoCA -> two
    
= twoCA
+ I could finally learn to be a real writer. 
    I could create stories! Ones people would read! I could finally put these possible worlds on paper. 
+ I could actually make the world a better place. 
    I could study what's wrong with the environment. I could be someone who helps save it!
    Then these places that mean so much... they wouldn't have to be temporary.  
+ I could teach some awesome, obscure subject.
    Like Burial Archeology? Or the History of Astronomy! Or I don't know, Honeybee Anatomy?
    It doesn't matter what. Just something worth knowing for the sake of it. For the beauty and purpose of passing it on. 

/*
I saw one class at Lehigh that got me so excited. It’s called...
    /*+ Back to the Land
        It's about how people living in communes engage with nature.  Don't you want to know more about that? The only thing people around here think nature is good for is feeding cows and hunting deer. 
    + One Hundred Poems
        I think that one’s what it says on the tin. But don't you want to read a hundred poems?
    + Linguistic Anthropology
        It's about how different languages shape societies. I’d never even thought about that before. 
    + Queer Futures
        It's a poetry class. You'd never hear anyone around here talk about 'queer futures.'
- There's just so much out there to learn. 
*/

- # DIA 
But still...
+ There's so much left for me here.
    -> twoCBA -> 
+ How do I know I'll fit in? 
    -> twoCBB ->  
-->->

= twoCBA 
+ The small places I've carved out for myself. 
    The windowsill where I read in the library. The corner where we meet after school. This field that's been here for me my whole life.
    How could I leave that behind?
+ The people I've grown close to. 
    Friends like you and Saige. My dad? I mean, how could I ever leave him behind?
-
JASON 
I'm not sure.
->->
    
= twoCBB 
All those confident people like you, coming from the city? 
    + Jumping right into being an adult?
        I don't know if I'm ready for that. 
    + I mean, college parties? 
        Forget about it. That's not me, is it? 
-
I don't think I'm quite like you in that way. 

JASON 
That's okay though, May
-->-> 

= twoE 
They hover there between the treetops, the black glass tips pointing to the earth. 
#DIA 
MAY 
I always found it strange how they don't cast shadows. As a kid, it made me think they were just some trick of the light. 

JASON 
No, they're real. I saw Katherine climb a tree to touch one, once.

# DIR 
May presses her thumbs and pointer fingers into a diamond pointed down, hiding it behind her back. She keeps her eyes closed long enough to make a wish.
-> three

= three
#PB
# DIA 
JASON
Do you remember the last time we went walking here? All these clovers flooding the hill, they were only dry grasses and dragonflies. Now there must be thousands of those little three-leaved flowers. 

But look! You can still see the paths we took two weeks ago, perfectly parallel. 

MAY
+ Things change so quickly, don’t they? 
+ I wonder how long the paths will last once we’re gone.
- Come on. I want a better view.  

- # DIR 
Then the two continue on, briefly dipping out of sight before climbing higher up the hill, further upstage. 
-> six

= six 
# PB
# DIR 
{
    - shilohSixO == 0: May stops walking to see the field from above.
    - shilohSixO == 1: May isn't ready to move on.
    - shilohSixO == 2: May isn't ready to move on.
    - shilohSixO == 3: May isn't ready to move on.
    - shilohSixO == 4: Now Jason lingers on the landscape.
    - shilohSixO == 5: Jason wonders what May's thinking. 
}
+ {MaySawTruck == false} May spots a rusty truck nestled in the underbrush. 
    -> sixO -> sixA
+ {MaySawCouch == false} May sees a spotty sofa left by the forest's edge. 
    -> sixO -> sixB
+ {shilohSixO >= 1} {MaySawWheel == false} May makes way for a wooden cart wheel rolling on its own.
    -> sixO -> sixE
+ {shilohSixO >= 2} {MayAndJasonPlayedPirates} {MaySawMemory == false} May spots a treasure chest strung up by vines.  
    -> sixO -> sixFA
+ {shilohSixO >= 2} {MayAndJasonPlayedGhostHunters} {MaySawMemory == false} May sees a ghost passing in between the trees.  
    -> sixO -> sixFB
+ {shilohSixO >= 2} {MayAndJasonPlayedPaleontologists} {MaySawMemory == false} May spots a stegosaurus munching on a leafy tree.  
    -> sixO -> sixFC
+ {shilohSixO >= 3} {MaySawTransmissionTower == false} Jason sets his eyes on the transmission tower.
    -> sixO -> sixC
+ {shilohSixO >= 4} {MaySawOneWaySigns == false} Jason spies a signpost standing atop the hill. 
    -> sixO -> sixD

= sixO
~ shilohSixO = shilohSixO + 1
->-> 

= sixA
~ MaySawTruck = true
# DIR 
Tangled in the thicket at the bottom of the hill, a pickup truck sits crooked. It has no tires or windshield. It’s colonized by rust, so much so that its blue paint can barely be seen beneath orange.
# DIA 
JASON 
I bet you Saige's truck will be that rusty by the time she comes back from Bolivia. A year is a long time to be away. 

MAY 
+ I’m so excited for her to see the world.
    I can't imagine going to another continent all on my own. But imagine all the things she's going to see.
    That's the kind of thing I want to do. 
    
    JASON 
    So why don't you? 
    
    MAY 
    I'm not sure.

+ I’m sad that she’s leaving. 
    I'm really going to miss her. It feels like everyone's moving away. 
    
    JASON 
    That's because everyone is. For one thing or another.
    
    MAY 
    I don't want to be left behind. 
--> six

= sixB
~ MaySawCouch = true
# DIR 
The worn-out couch sits sheltered in the shade, though clearly it's seen better days. It faces west, as if someone sat here watching the sun go down. 
# DIA 
MAY
Do you remember that time we tied a sofa to your car? And you dragged it down Penn Ave like a trailer, with Saige and I sitting on it?

JASON
Of course I do! That was one of my best ideas yet.

MAY
It was a terrible idea! 

JASON
Hey, you went for it!

MAY 
+ [(lying) I did not!]
    #INF 
    (lying) 
    # DIA 
    I did not! 
    
    JASON 
    # INF 
    (smirking) 
    # DIA 
    Liar.
    
    MAY
    So what if I did? You weren't supposed to take me seriously! 
    
    JASON 
    Listen May, your ideas are universally better thought-through than mine. This was no exception. 
    
+ So what if I did?
    <> You weren't supposed to take me seriously! 
-
JASON 
Listen May, your ideas are universally better thought-through than mine. This was no exception. 
Besides, now we have an awesome story for when we go to college. 

MAY 
You have a great story to tell!
+ I, however, am left with lingering trauma. 

    JASON 
    But, like, cinematic trauma. 
    
+ I still don't know if I'm going to college. 
    And so my experience will remain a secret. 
    
    JASON 
    Well, you should at least tell your dad. He'd appreciate my ingenuity. 
--> six

= sixC
~ MaySawTransmissionTower = true
# DIA
JASON
When I was little, I thought those things were giant scarecrows for the cornfields.

Do you know what they’re called? Barely anyone knows their name since most people never need to talk about them.

MAY
+ My uncle worked on them. They’re called transmission towers.

    JASON
    I think I changed my mind. Now they look like titans. As if at night, they put down their wires. And instead of staying here, wander the earth in search of something greater.
    MAY
+ They remind me of a sculpture I once saw in Swatara State Park.
    -> sixCA -> 
- 
Come on. I want to get closer. 
#DIR 
The two continue on, climbing towards the tower. 
-> seven -> eightA

= sixCA 
# DIA 
It was this massive mobile hidden in the forest. Ten, twenty, thirty-foot pipes, silver where they caught the moonlight in the dark, hung down between the tree branches, balanced by wieghts and balloons so they'd endlessly spiral, and when the wind blew, they'd create the most beautiful music. 
+ Like overgrown wind chimes.
	<> With a random rhythm that reminded you of music. 
+ Like an organ set on the loose.
	<> No one at the keys to control it. 
-
+ My dad and I found it by following the sound.
    <> We'd do that, him and I. Always sneaking off to chase down curiosities.
+ I found it on my own, wandering the forest past midnight.
    <> I couldn’t sleep with the sound. Not until I found out what it was. When I finally did, I curled up beneath it and slept there til morning. 
-->->

= sixD
~ MaySawOneWaySigns = true
# DIR 
Stuck crooked in the clovers is a rusty metal rail. To the top are pinned two signs in black and white, intersecting at right angles like faded street signs. 
# DIA 
JASON
What do you think they say?
MAY 
I’m not sure. I can't see from here. Come on, let's get closer. 
# DIR 
The two continue on, climbing to the signs. 
-> seven -> eightB

= sixE 
~ MaySawWheel = true
# DIR 
A half-dozen others follow in a random arrangement. They leave thin tracks in the clovers. They roll over the field, then rattle across the rocky creek beds. May loses sight after they arc over the hill. 
# DIA 
MAY
I've always wondered where they go. 
JASON
You think they're going anywhere? I always thought of them as tumbleweeds, rolling with the wind. 
MAY
+ Sure. But what's rolling them? I know it's not the wind. 
    ++ Maybe they're just following a current we can't see. 
        They'll roll like a river, further and further south. Until they loop around the earth and start their return north. 
    ++ Maybe it's the ghosts. 
        I bet they find it fun. 
    ++ It could just be gravity.
        It's as simple as that. 
        
+ They must be going somewhere. They have a mind of their own.  
    JASON 
    But where? 
    
    MAY
    ++ Back to where they were born? 
        Like salmon, or something.
    ++ Maybe they're just moving on. 
        They're pulled by where they haven't been. They're going anywhere but here. 

--> six 

= sixFA 
~ MaySawMemory = true
# DIR 
It's suspended far above them, tangled near the treetops. It looks as if it were an insect caught in a giant spider's web. 
# DIA 
JASON 
How'd we'd never catch that one? I swear we found them all! 

MAY 
(teasing) 
Speak for yourself. I first had my eye on it ten years ago.

JASON 
What! And you never mentioned it? There could be gold in there, May! 

MAY 
+ You want to mess with the spider-vines?
    
    JASON 
    (thinking) 
    No, I guess you're right. It'll stay there for another day. 
    
+ All that's ever in those chests is sand. 
    
    JASON 
    Yeah, I guess you're right. 
--> six 

= sixFB 
~ MaySawMemory = true
# DIR 
It casts a half-shadow where it intersects the slanted sunlight, so we can always see its silhouette. May points out the half-there person. 
# DIA 
JASON 
I haven't seen a ghost since we were kids. You don't know her, do you? 
MAY 
+ Actually, I do. 
    I met her a few years ago, when I would eat my lunch in the woods every day. She's sweet. But a little skittish. 
+ No, I've never talked to her. 
    <> I think she's a little skittish. 
-
JASON 
That makes sense. Probably best not to stare, right? 

MAY 
Yeah. We're not ghost-hunters anymore. 
--> six 

= sixFC 
~ MaySawMemory = true
# DIR 
For such a massive creature, it's surprisingly easy to miss. Its emerald plates and scales blend well with the trees. It makes no movements that aren't needed. May points it out to Jason. 
# DIA 
JASON 
I haven't seen one of those since we were kids. Do you see them often? 

MAY 
+ They're a pretty common sight, if you're not too loud. 
    
    JASON 
    I guess that's why I haven't seen one in so long. 
    
    MAY 
    Well, I wasn't going to say it...
    
    JASON 
    (teasing) 
    But you totally did. 
    
    MAY 
    (smiling) 
    Yeah... I guess I did. 
    
+ No, not since we were kids. 
    You know... climate change. 
    It's good to see they're still around. I never get tired of seeing them do their thing. 
--> six 

= seven
# PB
# DIA 
JASON
You still haven’t thought any more about Lehigh? It’s a great university. And I’m so jazzed you got accepted.

MAY
+ No. Whenever I do, I get this terrible feeling. So I don’t. 
    Even though I should be happy to have been accepted. 
    It’s like the future is haunted. 
    ~ MaySaysTheFutureIsHaunted = true 
+ You’ve got it backwards, Jason. I haven’t stopped thinking about it since I got accepted. 
    It’s like the future is haunting me. 
    ~ MaySaysTheFutureHauntsHer = true
-
JASON
But I know what you mean when you say you’re still not sure. Even though it’s a good school and all. 

MAY
Yeah. I don’t know what to do. 
->->

= eightA
# PB 
# DIR 
Jason and May reach the transmission tower. Its legs are made of a latticework of welded metal. Its steel boots are buried in the clovers, rooted there like trees. 
Above them, the lofty power lines are strung on its strong steel arms. But past the transmission tower, the arrangement comes undone. The power lines fly in empty air without another tower in the distance. They wave like the electric tentacles of a giant jellyfish.
-> nine

        
= eightB
# PB
# DIR 
May and Jason reach the signpost that stands beside the tower. 
The two stacked signs each read "ONE WAY". One points left. The other points right.

# DIA 
JASON 
That's hilarious. 

MAY 
(laughing) 
Well now I don't know what to do! Which one way should we go?

# DIR 
As if it were somehow listening, the wind then blows past them. It spins the signs like weathervanes. They circle around and around. But then they come to rest in the same contradictory arrangement. 

# DIA 
JASON 
I think it might just be a mystery. Besides, this spot is good enough as it is. 
# PB 
-> nine


= nine 
# DIR 
The two teenagers sit side by side in the clovers. 
# DIA 
JASON
I wish I could help you make your decision. 

I know it sucks, not knowing what you want to do after graduation. 

MAY
+ You’re already helping, Jason. 
    # DIR 
    Jason frowns. He doesn’t believe her yet.
+ It’s not really something that can be helped, is it?
    # DIR 
    Jason frowns. He’s thinking of a solution.
- # DIA 
JASON
Have you met the school guidance counselor? They’re strangely reclusive, but good to talk to if you can manage to find them. Before I knew what I wanted, they helped me. 

How about this? Tomorrow, I’ll take you to see them. It’s a bit of a maze, finding their office. But I know the way. We’ll ask them for advice. They’ll help you decide what to do.
MAY
+ If you think it’ll help… sure, we can try tomorrow.

    JASON
	(nods, smiles)
	Sounds like a plan.

+ Really? Can we see them now? 
	
    JASON
    # INF
	(laughing)
	# DIA 
	It’s Sunday, May! They’re not there right now! But we can go tomorrow. 
--> ten 

= ten 
# DIR 
May smiles. She’s happy to have his help.

Now we watch them sit there– One, Two beneath the power lines, {eightB: their backs to the signposts forbidding them go further.} {eightA: their backs to the lattice that holds them aloft.}

Jason leans back to look up into the power lines. 

May’s eyes scan the distance while she tears at clovers. 
-> continue 

= continue
+ <
    #CLEAR 
    -> script.cover
+ > 
    # CLEAR 
    -> layersedge.start