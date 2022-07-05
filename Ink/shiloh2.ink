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

VAR shilohSixO = 0
VAR MaySawTruck = false 
VAR MaySawCouch = false 
VAR MaySawTransmissionTower = false     // these ones here 
VAR MaySawOneWaySigns = false           // aren't currently used

~ MayAndJasonPlayedPirates = false
~ MayAndJasonPlayedGhostHunters = false
~ MayAndJasonPlayedPaleontologists = false

# THEME: white
# DEFAULTTHEME: white
# TITLE: THE COUNSEL IN THE CAVE
# TITLE: ACT I, SCENE I
# TITLE: SHILOH HILLS
-> one

= one 
#DIA 
Late spring, 2016. A field behind Shiloh Hills Elementary School. Berks County. 
#IMAGE: img/shiloh.jpg
#SCENETITLE: SHILOH HILLS
#DIR
The curtain rises on a steep green hill covered in clovers. On stage right, tall trees line the edge of a small wood. Below us on stage left, unkempt vegetation grows more wild. 
Between the forest and the brush, a narrow field of clovers rises and falls in a series of steep hills. 
Power lines are strung above. They zig-zag to the distance, anchored by transmission towers, the massive steel lattices that stand out on the hilltops.
Two teenagers, Jason and May, enter the foreground from a gravel path that overlooks the green. 
-> two

= two
#PB
{ 
    - shilohTwoO == 0: 
        # DIR 
        As they pass by the hill, May stops to look.
        # DIA 
        MAY 
        Hold on, Jason. I want to take a minute. Just look at all of this.
}
# DIR
+ {MaySawBrush == false} May gazes to the thicket growing wild on our left. 
    -> twoO -> twoB
+ {MaySawForest == false} May peers between the slender trees, waiting on the right. 
    -> twoO -> twoA
+ {shilohTwoO >= 1} {MaySawFarmland == false} May scans the small squares of tilled farmland, patched into the distant hills.
    -> twoO -> twoC
+ {shilohTwoO >= 2} {MaySawClovers == false} May inspects the clovers at her feet. 
    -> twoO -> twoD
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
Do you remember when we’d play make believe here as kids?
+ When we’d imagine we were pirates, searching for buried treasure?
    -> twoAA ->
+ When we’d wander through the woods hunting ghosts?
    -> twoAB ->
+ When all we’d do was dig up rocks and we pretended they were fossils?
    -> twoAC ->
-
MAY
But it’s strange to think about, isn't it? We're about to graduate... to be a part of the real world... right here where we used to play make-believe. Isn't that weird?
-> two

= twoAA 
~ MayAndJasonPlayedPirates = true
The pavillion was our island fortress, and some fallen log our ship? We would draw maps for ourselves in the dirt and pretend we knew where we were going. 
    
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
You mean you were terrified. I wasn't scared.

JASON 
If that's how you rememeber it.
->->

= twoAC
~ MayAndJasonPlayedPaleontologists = true
#DIA 
And we'd make up our own names for the dinosaurs we discovered?
    
JASON 
#INF 
(laughing)
#DIA 
Of course I remember! How could I forget the great 'Jason-osaurus?'
    
MAY 
#INF 
(laughing too)
#DIA 
Even when I was six, I knew that was a dumb name.
    
JASON 
#INF 
(laughing)
#DIA 
Yeah, I was pretty self-obsessed, wasn't I?
->->

= twoB
~ MaySawBrush = true
# DIR 
Low tangled trees root from rocky creek-beds. Dense brushes push against one another. Mosquitoes buzz and hum. 
There, May spies an old rowboat split by a twisted vine. 
# DIA 
JASON
Whoah. Do you think your dad could fix that? You’re still helping him on the weekends, aren't you?

MAY
+ Yeah. I never would have thought I’d be spending my last weeks of high school fixing boats with my dad.
    But I like it. He needs the help, too. I'm not sure what he's going to do once I leave for college. If I leave for college, that is. 
+ That thing down there is pretty far gone. It’s beyond repair. 
    Still, I can see him lugging that old thing back to the shop. He’ll put hours into patching that shattered hull, for no good reason other than to find what he imagines it could be. 
    He’s like that. And I love him for it.
--> two

= twoC
~ MaySawFarmland = true
# DIR 
Each one's shade is a different green or yellow. Dark lines between lend the texture of a coloring book. 

# DIA
JASON
Good old Berks County. Nothing but silos and cows for company out here. 

I can’t wait to get out of this place. I couldn’t spend another year in no-man's land. 

MAY
+ I wonder what else I could be if I left. 
//+ I wonder what else I could see if I left.
//    <> What else is out there besides forests and farms, you know?  
    
    <> What I might miss if I don't go to college. I think about it all the time. 
    
    JASON 
    See, you get what I mean!
    -> twoCJason ->
    
    MAY
    I never want to stop learning.
    -> twoCMay -> two
    
+ It's not all that bad.
    You don't like driving through the hills, or listening to the crickets?
    
    JASON
    I’ve got places to be, May! I need to see the world. 
    -> twoCJason -> 
    
    # DIA 
    Don't you want to keep learning, May? College would be perfect for you! 
    
    MAY 
    Of course I do. 
    -> twoCMay -> two
    
= twoCJason
# DIA 
No college around here is any good for music. But in a few months I’ll be on my way to the city, where it really happens. Then this time next year, I’ll be learning from the best. I want to be a great player, May.
->->

= twoCMay
I saw a class at Lehigh called...
    /*+ Back to the Land
        It's about how people living in communes engage with nature.  Don't you want to know more about that? The only thing people around here think nature is good for is feeding cows and hunting deer. */
    + One Hundred Poems
        I think that one is what it says on the tin. But don't you want to read one hundred poems?!
    + Linguistic Antropology
        It's about how different languages shape societies. No one even thinks about that kind of thing around here.
    + Queer Futures
        It's a poetry class. You'd never hear anyone around here talk about 'queer futures.'
- There's just so much out there to learn. 

- # DIA 
But still...
+ There's still so much left for me here.
    These little places I've carved out for myself. The friends I've worked so hard to make. My dad! 
    How can I leave all that behind? 
    
    JASON 
    I don't know. 
    
+ How do I know I'll fit in? 
    All those confident people, like you, coming from the city? Jumping right into being an adult. I mean, college parties? Forget about it. That's not me, is it? I don't think I'm quite like you in that way. 
    
    JASON 
    That's okay though, May. 
-->->

= twoD
~ MaySawClovers = true
# DIR 
The field exists in some space between the lofty wooded park and the unkempt abandon. It’s kept clean of trees for the power lines above, but is not without thick washes of long kept clovers. Your feet would sink down if you stepped into the field, leaving tracks of trampled clovers where you went. 

+ May lets a lady-bug rest on her finger. 
    She lifts it up to her eye to look at it closely. Sunlight fills the cracks in its red carapace. Then she blows it away, sending it off into the near-summer air.  
    -> twoDA
+ May picks a dandelion growing between clovers. 
    Then she blows away the seeds, scattering white whisps through the near-summer air.
    -> twoDA
    
= twoDA
# DIA 
    JASON 
    What'd you wish for? 
    MAY 
    + {MayAndJasonPlayedPirates} For one thousand gold dubloons... 
        -> twoDAA ->
    + {MayAndJasonPlayedGhostHunters} To see a real ghost. 
        -> twoDAB ->
    + {MayAndJasonPlayedPaleontologists} That the Jason-osaurus was real. 
        -> twoDAC ->
    + Only that I didn't have to graduate just yet.
        -> twoDB ->
    + Well if I told you, it wouldn't come true. 
            Everyone knows that, Jason.
        JASON 
        How could I forget?
--> three

= twoDB 
# DIA 
JASON 
Why's that?

MAY 
+ Because there's too much here to leave behind. 
+ Becuase  my friends are moving away.
+ Because I don't know if I should stay or go. 
-->->

= twoDAA 
# DIA 
JASON 
    Sounds like someone hasn't given up on Captain May-Beard and Scallywag Jason. 
    MAY 
    + I don't know why they still live in my head. 
        They just haven't found a reason to leave, I guess.
    + Pirates never give up, Jason.
        # INF 
        (smirking) 
        # DIA 
        Not on their mateys. 
        
        JASON 
        Oh my god. You are ridiculous. 
    + Yarg. 
        # DIR 
        Jason laughs. 
        # DIA 
        JASON 
        Yarg, indeed. 
-->->
            
= twoDAB
# DIA 
That if we waited til dark and wandered into those woods, we could finally find what we went searching for all those years ago. 

    JASON 
    # INF 
    (chuckling) 
    # DIA 
    I didn't know you were such a believer in the supernatural. 
    
    MAY 
    + Hey, I can dream, can't I?
    + Oh, I'm not. I just like those old stories. 
    - Is it really so weird for me to wish they weren't  made up? That those ghosts exist even now?
    JASON 
    I don't know. I don't think much about those times  anymore. 
-->->

= twoDAC
# DIA 
JASON 
    What are you talking about, May? The Jason-osaurus is totally real. I hate to break it to you, but you wasted your wish. 
    MAY 
    + How could I forget! You're right. What a shame.
        # DIR 
        Jason laughs
        # DIA 
        JASON 
        Better luck next time, May.
    + But you know what I mean, don't you? 
        Is it really so weird for me to wish those stories weren't made up? That they exist even now?
        JASON 
        I don't know. I don't think much about those times anymore. 
-->->

= three
#PB
# DIR 
/*
JASON
This hill is so different each time we’re here. It only took two weeks for every one of these clovers to come in. 

But can you see the parallel paths we took two weeks ago? They’re still there, pressed into the field.
*/

It's then that Jason startles May with an observation of his own.
# DIA 
JASON
Check out all these clovers, May! How they flood the hill? They’re different each time we come here, you know. Remember last time? It was only dry grasses? Those huge dragonflies? Now there are all these little round flowers.

But look! You can still see the parallel paths we took two weeks ago, trampled into the wash.

MAY
+ Things change so quickly, don’t they? 
+ I wonder how long the paths will last once we’re gone.
- Come on. Let's take those paths again, while they're still around. I want a better view.  

- # DIR 
Then the two continue on, briefly dipping out of sight before rising higher on the hill, further upstage. 
-> six

= six 
# PB
# DIR 
{
    - shilohSixO == 0: Then May stops walking to take in the view from above.
    - shilohSixO == 1: May isn't ready to move on.
    - shilohSixO == 2: Now Jason lingers on the landscape too.
    - shilohSixO == 3: Jason wonders what May's thinking. 
}
+ {MaySawTruck == false} May spots a rusty truck nestled in the underbrush. 
    -> sixO -> sixA
+ {MaySawCouch == false} May sees a spotty couch left by the forest's edge. 
    -> sixO -> sixB
+ {shilohSixO >= 1} {MaySawTransmissionTower == false} May sets her eyes on the transmission tower.
    -> sixO -> sixC
+ {shilohSixO >= 2} {MaySawOneWaySigns == false} May spies two signposts sticking up from atop the hill. 
    -> sixO -> sixD

= sixO
~ shilohSixO = shilohSixO + 1
->-> 

= sixA
~ MaySawTruck = true
# DIR 
Tanged in the thicket at the bottom of the hill, a pickup truck sits crooked. It has no tires or windshield. It’s colonized by rust, so much so that its blue paint can barely be seen beneath orange.
# DIA 
MAY
It reminds me of Saige’s truck. 

JASON
It honestly could be. Her’s is nearly as rusty. 
Do you know what she’s doing with it while she’s teaching in Bolivia?

MAY
I’m thinking she’ll just keep it at her dad’s.
Why, you want to drive it? 
+ You know she’d kill you if you touched it. 
+ You’d have to get the thing to start, first.
-
JASON
No, no! I was just thinking how rusty it’ll be once she finally gets back. A year is a long time to be away.

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
Do you remember the time we tied a sofa to your car? And you dragged it down Penn Ave like a trailer, with Saige and I sitting on it?

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
    So what if I did! You weren't supposed to take me seriously! 
    
    JASON 
    Listen May, your ideas are universally better thought-through than mine. This was no exception. 
    
+ So what if I did!
    <> You weren't supposed to take me seriously! 
    
    JASON 
    Listen May, your ideas are universally better thought-through than mine. This was no exception. 
-
MAY
+ We nearly got arrested!
    The cops were not impressed with your engineering. Especially after you drove right past the station!
+ It almost caught on fire!
    We had to stomp it out in the McDonald's parking lot! 
        ++ I swore I'd never go back there! 
            They paid me minimum wage, for god's sake.
        ++ It was so embarassing!
-
JASON
And now we have a great story to tell when we go to college!

MAY 
You have a great story to tell!
+ I, however, am left with lingering trauma. 

    JASON 
    But, like, cinematic trauma. 
    
+ I still don't know if I'm going to college. 
    And so my experience will remain a secret. 
    
    JASON 
    Well, you should tell your dad. He would appreciate my ingenuity. 

    MAY 
    Jesus, Jason, please don't tell my dad. 
--> six

= sixC
~ MaySawTransmissionTower = true
# DIA
JASON
When I was little, I thought those things were scarecrows for the cornfields.
# DIR 
Jason holds out his arms in a T like a scarecrow. He scrunches his shoulders up to his ears and makes a goofy face. May can't help but laugh.
# DIA 
JASON
Do you know what they’re called? Barely anyone knows their name since most people never need to talk about them.

MAY
+ My uncle worked on them. They’re called transmission towers.

    JASON
    To me they’ve always looked like titans. As if at night, they put down their wires. And instead of staying here, wander the earth in search of something greater.
    
+ They remind me of a sculpture I once saw in Swatara State Park.
    -> sixCA -> 
- 
MAY
Come on. I want to get closer. 
#DIR 
The two continue on, climbing towards the tower. 
-> seven -> eightA

= sixCA 
# DIA 
It was this massive mobile hidden in the forest. When the wind blew, it would make the most beautiful music. 
+ Like overgrown wind chimes.
+ Like an organ set on the loose.
-
+ My dad and I found it together by following the sound.
    We'd do that, him and I. Always sneaking off to chase down curiosities.
+ I found it on my own, wandering the forest past midnight.
    I couldn’t sleep with the sound. Not until I found out what it was. When I finally did, I curled up beneath it and slept there til morning. 
    
JASON 
Wow. That sounds incredible.
-->->

= sixD
~ MaySawOneWaySigns = true
# DIR 
Stuck crooked in the clovers is a rusty metal rail, to the top of which is pinned a rectangular sign in black and white. Just past it is another  like it, leaning to the other side. May can't make out what either says from here. 
# DIA 
MAY 
Come on. I want to see what's up there. 
# DIR 
The two continue on, climbing to the signs. 
-> seven -> eightB

= seven
# PB
# DIA 
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
# PB 
Jason and May reach the transmission tower. It's legs are made of a latticework of welded metal. Its steel boots are buried in the clovers, rooted there like trees. Above them, the weight of lofty power lines is hung on strong steel arms. 

Hidden in the latticework, a spider's web stretches between steel beams.
-> nine

        
= eightB
# PB
# DIR 
Beside the transmission tower, a government sign stands vigilant in the center of the path. 

"ONE WAY" it reads, pointing to the left. 

Just a few feet beyond it is another just like it. Only this second sign points to the right. 
# DIA 
JASON 
That's hilarious. 

MAY 
(laughing) 
Well now I don't know what to do! Which one way should we go? 

JASON 
It might just be a mystery. Besides, I think this spot is good enough as it is. 
-> nine


= nine 
# DIR 
# PB 
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