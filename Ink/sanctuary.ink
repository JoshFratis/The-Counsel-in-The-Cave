===sanctuary===
-> start 

= start
VAR sanctuaryTwoO = 0 
VAR MaySawPortalMundane = false 
VAR MaySawPortalLayers = false
VAR MaySawAtlas = false

VAR MayMetRoger = false
VAR MayMetCartographer = false 
VAR MayMetAstrologer = false

VAR MayVisitedPaintedHarbor = false
VAR MayVisitedDragonHive = false
VAR MayVisitedAtlasOrigin = false

~ JasonWanderedForest = false
~ JasonWanderedCave = false
~ JasonWanderedCity = false

~ MayGoesHome = false
~ MayGraduates = false
~ MayEntersLayers = false

~ JasonGraduates = false
~ JasonEntersLayers = false

# THEME: white
# DEFAULTTHEME: white
# TITLE: THE COUNSEL IN THE CAVE
# TITLE: ACT III, FINALE
# TITLE: COUNSEL IN THE CAVE
# PN: 101
-> one

= one 
# DIR 
The curtain rises on a cavernous round room, lit solely by a long cylinder of starlight that falls down through its center. Wide rings of stone steps ripple out from where the light lands, as if this were an amphitheater, lit by a spotlight. 
The sloped stone ceiling is held high by colossal pillars scattered randomly around the rings. The round room’s edges are unseen, like the backstage of a theater. 
May enters from the audience. She should occupy the entirety of the performance space as if it were all part of the scene. As if the audience was seated within the scene itself. 
It’s then that we see Jason. He stands from a seat among the audience. He appears to be a ghost, passing through the rows and flitting between pillars. We can’t discern his precise form– it wavers and fades. But it's clear that he’s frightened, hiding in the dark.
-> two 

= two 
# DIR 
+ {MaySawPortalMundane == false} May gazes upwards, looking for the starlight's origin.
    -> twoO -> twoA -> two
+ {MaySawPortalLayers == false} May is drawn to center stage, where the starlight pools.
    -> twoO -> twoB -> two 
+ {sanctuaryTwoO >= 1} May approaches a broken pillar braced by an enormous statue.
    -> twoO -> twoC -> three
+ {sanctuaryTwoO >= 2} May notices the ghost passing between pillars.
    -> twoO -> twoD -> three

= twoO 
~ sanctuaryTwoO = sanctuaryTwoO + 1 
->->

= twoA 
~ MaySawPortalMundane = true
Far above, we see a reflection of the mundane world. Suspended, upside-down, is The Old Band Room, as if it were submerged in a body of water that we were observing from below. It’s filled with students playing music, arranged in rings that mirror the amphitheater. It waves like an image on restless water. It looks like a portal home. 
    ->-> 

= twoB
~ MaySawPortalLayers = true
Looking through it, May can see another world, as if it were a portal to distant dimensions. Below, May beholds the full extension of The Layers. Convergent, distant lands. Intersecting, combining, reacting. 

May leans over the edge to peer into the void, but stays careful not to fall.
    ->-> 

= twoC
~ MaySawAtlas = true
The pillar's broken base lays crumbled on the floor. There kneels in the remains a titanic human figure, its palms pressed against the severed column's underside. The statue drives the pillar to the ceiling and braces the weight of the theater ceiling on its back.

# DIA 
MAY
He’s like Atlas. Holding up the sky.
Who’s sky are you supporting, Atlas?

# DIR 
As if in some strange answer, May then hears the sound of wind whistling through the theater. She turns to look into the dark.
    ->->

= twoD
# DIA 
MAY
Hello?

# DIR 
A pause. It’s not like May expects an answer.
    ->->

= three
# PB
# DIA 
JASON
May?

# DIR 
The ghost pokes his head out from behind a stone pillar. It’s Jason, but changed. We can see through his faded skin to his skeleton, which faintly glows. 

# DIA 
MAY
Jesus, Jason! Is that you? 

JASON
Yeah… 

MAY
+ What are you doing here? Graduation is today! 
    You should be on the surface! At school! Or you’ll miss it! 
+ How'd you get like this? You look like a ghost! 
--> four 

= four 
# PB
JASON 
I- I came for you, May.
+ I came to rescue you.

    MAY
    Rescue me? Jesus, Jason... I’m not the one that needs saving. 

+ I need your help, May.

    MAY
    My help? 

- Hold on, start over. Tell me everything.
-> five 

= five 
# DIR 
# PB
Jason looks timid. Overwhelmed. He's reluctant to speak at all. 
# DIA 
JASON
I… I fell, May. I came to The Layers to look for you, but… pretty soon I was lost. Totally, totally lost. 

+ There was a forest, growing in every direction. 
    -> fiveA ->
+ There was an endless cavern, filled with floating doors. 
    -> fiveB ->
+ There was… an empty city, made of glass. 
    -> fiveC ->
--> six 

= fiveA
~ JasonWanderedForest = true
It was like a cave, May. Roots and branches all tangled together. I couldn’t tell which way was up. 
I tried my best to find my way to you, but I couldn’t make sense of the forest. The trees… they kept changing. They brought me back to the dungeon no matter which path I took. The door was made of roots, like it was grown there just for me to find. 
->->

= fiveB 
~ JasonWanderedCave = true
They just hung there, out over the abyss. I wanted so badly just to look inside. But every one was closed and I couldn’t reach the handles. 
Instead, I climbed a set of stairs that was carved into the rock. There were others, too. Endless flights on every surface, upside down and intersecting...
I tried my best to find my way to you, but I couldn’t make sense of the cavern. The steps brought me to… a dungeon. The door was set in stone like the entrance to a tomb. 
->->

= fiveC 
~ JasonWanderedCity = true
It rained the whole time. The puddles on the glass were like double-sided mirrors. I tried my best to find my way to you, but the streets had no names. Like it was just a maze. No matter which way I turned, the city brought me back… to the dungeon. It was reflected in the glass no matter which way I turned. 
->->

= six 
MAY
What dungeon, Jason?
# DIR 
Jason’s smoky body shudders, as if blown by a gust of wind. The bones inside him rattle and buzz.

# DIA 
JASON
It was like the high school, May. But colder. Made of stone. 
And emptier, except for skeletons, moving through the halls like they were scheduled for classes. Sitting at desks, never breaking their gaze from endless reams of paperwork. 
I tried to leave there too. But I didn’t know which way to go. I only ended up confused, and scared, and deeper in the dungeon. Until I met… them.
-> seven 

= seven
# PB
MAY
Who, Jason? Met who?

# DIR 
Jason’s pale image fades in and out of focus. The glow of bones surges.

# DIA 
JASON
The Constricted Administer. This strangled man, strung up like a puppet in the coils of a terrible snake. 
+ The man was all but dead. 
    -> sevenA ->
+ The serpent had no end. 
    -> sevenB ->
- I tried to leave. But that was when it dragged the man from his seat, coils on his neck like a noose. He was limp. Nothing but a host for the paperwork snake. 
It spoke so terribly.
-> eight 
    
= sevenA 
At his desk, he looked like any other office worker. He was nested in this giant pile of paperwork. And he invited me in. But when he spoke, his lips didn’t move. His eyes wouldn’t meet mine. 
The paperwork… it was only the Constrictor hiding in plain sight. It was made of paper, May. The snake. 
->->

= sevenB
Its coils trailed away into the shadows of the dungeon. They were flat, like scrolls of paper. The same kind the skeletons labored over. Their work fed him, May. Made him endless. 
->->

= eight
# PB
MAY
What did he say to you, Jason?
# DIR 
Jason lets a deep breath rise and fall, but no air flows from his lips. 
# DIA 
JASON
He told me… things he shouldn’t have known. Things about myself… only I know.
+ How I’m scared to leave Berks County.
     -> eightA ->
+ How I miss my mom. 
    -> eightB ->
--> nine 

= eightA 
+ How much I'm going to miss my friends.
    <> How I worry I won't find any others. 
+ How I'm not a good enough musician. 
       <> How no matter how hard I try, I'll fail.
- <> Everything that’s in my head, May. 
->->

= eightB
+ Ever since she left us, May… 
+ Ever since she[ died.]
    <>–
    #DIR 
    Jason takes a shaky breath. The air only moves through him.
    # DIA
- How could that snake have known? 
->->

= nine 
# PB
I don’t know how I managed it, but somehow I got away. It’s all become a blur. I escaped. But again, I was lost. 
# DIA 
JASON
I wandered deeper into the {JasonWanderedForest: forest}{JasonWanderedCave: cave}{JasonWanderedCity:underground}. All the while I couldn’t stop thinking about what that snake said. I could feel myself begin to fade away. 

It was dark, May. And it was quiet. I was lost. But more than that, I didn’t know if I would ever find my way again. 

I kept wandering. And eventually, <>
{
    - JasonWanderedForest: the forest came unwound. Below I found a path of flying vines. 
    - JasonWanderedCave: the cave began to break apart. Below the mountain, I found a path of floating stones. 
    - JasonWanderedCity: the city’s bricks began to break apart. Beneath the streets I found suspended squares of sidewalk, like a path of floating stepping stones. 
}
<> It led me here. 
-> ten 

= ten 
# DIR 
Jason sinks lower, melting through the stone step beneath him. 
# DIA 
JASON 
{
    - MaySaysTheFutureIsHaunted: You said the future's haunted. Well, look who's haunted now. 
    - MaySaysTheFutureHauntsHer: You said the future's haunting you. Well, look who's haunting now. 
}

# DIA 
MAY
I’m sorry, Jason.

JASON
It’s not your fault, May. I chose to come here. And I wasn’t ready. I’m less sure of myself than I ever was. 

MAY
It’ll be okay, Jason. You can still go home.

JASON
I don’t know if I can! I was so set on graduating. On leaving Berks County. For what?
+ So I could pretend that high school never happened?
    So I wouldn't be reminded of my mom. 
    Like I could ever leave that stuff behind. 
+ Just to prove to everyone I could? 
    ++ Why did I only care about what other people thought?
        I never even considered what I wanted after graduation. 
    ++ I only ever cared about myself.
        About being better than everyone else. 
- <> I don’t know what I was thinking. But I can’t go back now! Not without knowing it’ll be okay!
-> eleven 

= eleven 
# PB
MAY
+ You're going to be okay, Jason.
    That snake was only trying to trick you.
+ You don't need to know.
    But you have to keep moving.

-JASON
What? May, what are you talking about?

MAY
You can’t wait for the doubt to disappear because it never will. It’s a part of who you are. It’s part of being here, on the cusp of graduation. On the edge of the unknown.
That doubt you feel? That’s not what’s stopping you. It’s your despair. That’s what you can’t afford. You’re going to be okay, Jason. You just have to believe you will be.  
-> twelve 

= twelve 
# PB
JASON
May… where is this coming from? Last time we talked… you weren’t okay. I came here because I thought you needed my help. 

MAY
I thought I needed help too. That’s why I came looking for The Counselor. But I’ve learned so much since then. 
I met a friend who helped me as best he could.

{
    - MayGotFishingPole: 
        He's the one who gave me this! 
        # DIR 
        May holds up her fishing pole. She still has it. 
        # DIA 
        MAY 
        It's more helpful than you'd think. <>
        
        <> The <>
        {
            - MayCaughtCrowsNest: <>crow's nest<>
            - MayCaughtSocks:  <>socks<>
            - MayCaughtFlyingFish: <>flying fish<>
        }
        <> I caught led me across Layers' Edge. 
        
    - else: 
        I don't think it's his fault he couldn't help me find them. It's not really what you do on Layers' edge. But that's what I expected anyway, so it didn't take  long for me to get totally lost. 
}

+ I wandered to the Darkened University, floating in the snow.
    -> twelveA ->
+ I climbed along the Silken Trails, where giant spiders prey. 
    -> twelveB ->
+ I found the Mirror-Mines in the Clouded Caves.
    -> twelveC ->
--> thirteen
    
= twelveA 
It was like a summer college tour when campus is a ghost town. Only it was cold. And I had no one to guide me. The rooms all seemed the same. The halls went on forever. 
->->

= twelveB
Imagine nets of intersecting telephone wires, but made of spider-webs. Like tightropes and mousetraps and no floor beneath you. Like the power lines above Shiloh Hills. 
# DIR 
Jason can't help but smile at the memory. 
# DIA 
MAY
->->

= twelveC
Miners collect the crystals that grow there in the atmosphere. The ever-shifting caves create a mirror-maze. The miners know the way, but they’ve long forgotten how to speak. 
->->

= thirteen 
# DIA 
+ But there I met The Ticking Timekeeper, with his cart of clocks.
    -> thirteenA ->
+ That's where I saw The Crazed Cartographer, with all his nonsense maps. 
    -> thirteenB ->
+ I stumbled on Echo the Astrologer, in her inverted tower. 
    -> thirteenC ->
--> fourteen 

= thirteenA
~ MayMetRoger = true
He was planning a journey to the other side of The Layers, with a collection of clocks to calaculate the time it would take. The whole time he talked, he just kept winding and unwinding, recalculating as the seconds passed. He said he needed to know before he departed. 
But I realized he would never elave. Not with a cart full of clocks. Not if he never started. 
So I left him there. I forgot the time. 
He wasn't the kind of counselor I expected to find. but I sure learned something important. 
->->

= thirteenB
~ MayMetCartographer = true
He was such a funny guy. He always had his crooked nose buried in a project. For years he had attempted to chart the byways of The Layers. But he wouldn't spare a minute for a real look around.
At first I trusted that his maps could take me home. I followed them for days, hoping to make something of the nonsense. But that’s all they ever were. 
So I threw them out. I struck out on my own. 
I never thought The Cartographer would be the counselor I found. But I learned something important.

->->

= thirteenC
~ MayMetAstrologer = true
She’s the scientist turned fortune-teller of the Inverted Observatory. From its roots, she believed she could chart the stars. But all she ever saw were the glowing star-fish in the Subterranean Sea, far far below.
I believed her fortunes could show me my way home.  But after days of wandering I began to wonder… how should she know my future better than I know myself?
So I forgot her so-called fortunes. I made my own way..
She wasn’t the kind of counselor I expected to find. But I sure learned something important.
->->

= fourteen
+ Eventually I came to the Painted Harbor on the Sea of Stars.
    -> fourteenA ->
+ I wandered to the Dragon-Hive in the Eldest Garden. 
    -> fourteenB ->
+ I reached the Atlas-Origin on the Layers’ furthest edge. 
    -> fourteenC ->
--> fifteen 

= fourteenA
~ MayVisitedPaintedHarbor = true
It's a town for passerbys. I don't think anyone really lives there. But it's a community all the same. The people there were kind. They set me on my way across the Sea of Stars to you. 
->->

= fourteenB
~ MayVisitedDragonHive = true
I got to meet dragons, Jason! Dragons! I never would have thought of dragons colonized like bees. But somehow they managed it, and built a massive hive! They took me in when I was tired, then set me on my way to you. 
->->

= fourteenC
~ MayVisitedAtlasOrigin = true
A vast carven hand, wider than a mile, reaching up through the clouds to brace the Layers’ Edge. 
{
    - MaySawAtlas:
        #DIR 
        May motions to the statue that supports the broken pillar.
        #DIA 
        Like this one. They say the Atlas-Origin holds the Layers apart, so the wanderers within can travel through them freely.
}
From there, I found my way here to you.
->->

= fifteen
# PB
I’ve met a lot of people on my way, Jason. Most of them, the happy ones, are wanderers like us. The difference is, they’re okay with being lost. 
It’s beautiful what they can be. 
+ Once they forget who they’re supposed to be.
+ When they choose not to despair, even in the face of doubt.
--> sixteen 

= sixteen 
# DIR 
Jason leans into the light and May can barely see him, but for the bones that remain.

# DIA 
JASON
Did you ever find The Counselor? I could use their help right now… 

MAY
I tried my best to find them. I searched for so long. But then I realized…
+ I would never find them. 
    Not here in The Layers. Where maps are made of nonsense and the land laughs at prediction? No way would I find them. 
    And maybe that’s what they were trying to tell me all along, if only from afar. I had to find my way myself. 
+ They didn’t want to be found. 
    They came here to be lost. Maybe that’s what they were trying to tell me all along, if only from afar. 
+ I didn’t need them any more. 
    There was a moment... <>
    {
        - MayMetCartographer: after I threw away the map the Cartographer gave me...
        - MayMetAstrologer: after I disregarded the prediction the Astrologer gave me...
    }
    <> when I actually forgot my quest to find them. Not long after, I found <>
    {
        - MayVisitedPaintedHarbor: The Painted Harbor.
        - MayVisitedDragonHive: The Dragon-Hive.
        - MayVisitedAtlasOrigin: The Atlas-Origin. 
    }
    I found what I was really searching for–
    ++ Somewhere I can feel safe
    ++ Who I really want to be
    - <>–
    from within myself. That’s when I realized that I didn’t need to look for them. I could find my own way by letting myself be lost.
--> seventeen

= seventeen
# PB
# DIR 
Jason looks down through his fading hands, as if that's the last thing he wanted to hear. 
# DIA 
JASON
So why are you here, May? You’re no ghost. If you understand The Layers, you can leave this crypt. 
You can finally find where you belong, like you've always wanted. 

MAY
This isn’t a crypt, Jason. It’s no place to die. This is where you can decide who you want to be. Even if it's unclear you’ll get there. 
+ It’s a Crossroads. 
+ It’s a Theater. 
    A Cathedral Theater. A stage.
+ It’s a Sanctuary. 
--> eighteen

= eighteen 
# PB
# DIR 
May motions upwards through the cylinder of starlight. 
{
    - MaySawPortalMundane: <> She shows him the waving portal to the world they left behind. 
    - else: -> twoA ->
}
Then she motions down, and Jason follows her gaze down along the starlight to its edge. 
{
    - MaySawPortalLayers: <> Together they gaze into The Layers. 
    - else: -> twoB ->
}
-> nineteen

= nineteen
# DIA 
That’s why I’m here. I’ve decided. 
+ It’s time for me to graduate.
    -> nineteenA ->
+ I’m ready to go home.
    -> nineteenB ->
+ I’ve still got to wander. 
    -> nineteenC ->
--> twenty

= nineteenA
# PB
// MAY GRADUATES
~ MayGraduates = true
I’m done letting doubt stand between me and the world.  
+ Berks County will always be there for me. 
    -> nineteenAA ->
+ I’ve realized Berks County isn’t the same as I imagined it was. 
    -> nineteenAB ->
    
- <> Even though I don’t know where I’ll end up, or even the road I’ll take... 
+ The Layers have inspired me to seek what’s really out there. 
+ I’ve learned to love the journey. 
    To find meaning in it! <>
+ I know one day I’ll be okay.

- Despite the doubt I feel. But that doubt, Jason... It’s what’s eating you away!
->->

= nineteenAA 
+ I can always call friends like you. 
    What’s been the most important part of home has always been the people. And sure, they may be moving away. But I’ll always be able to reach them, no matter where I go.  
+ Shiloh Hills will stay the same. 
		Places I know I can go back to, where I can be myself. 
+ My dad isn't moving anytime soon. 
		I know I can always go home to him. 
-->->

= nineteenAB
+ High school is over. 
	That time has passed, and that’s okay. 
    I think that what I loved so much about it was how I grew. Now I’m ready to grow into somewhere new. 
+ My friends are moving on. 
    The time we spent together has passed, and that’s okay.  
+ At least, I’ve changed. 
    I think what I loved so much about Berks County was how I grew within it. Now I’m ready to grow into somewhere new. 
-->->

= nineteenB
# PB
// MAY GOES HOME
~ MayGoesHome = true
I've come to love Layers' Edge, despite its constant twists and turns.
+ But I miss my home, Jason.
    -> nineteenBA ->
+ But I miss my dad! 
    -> nineteenBB ->
+ But... I miss who I was in Berks County. 
    -> nineteenBC ->
-
+ My favorite places here… they’re all parts of home. 
+ The times I’ve been most lost… they’re when I’m furthest from home.

- I’ve learned that this place isn't my home. But I had to embrace my doubt to figure that out. So I’m glad I did. 
But you, Jason… Your doubt is eating you away! 
->->

= nineteenBA
I miss the fields at Shiloh Hills and driving down the open roads at night. I miss the library and the boat shop.
For everything the Layers have to offer, nothing matches home for me. Now I know it's where I belong. 
->->

= nineteenBB
I miss fixing boats and listening to him talk. Sure, I’ve made some friends in Layers’ Edge. But my family is the most important thing in the world to me. I don’t want to miss it. 
->->

= nineteenBC
I’m different here. I know I’d be different at college. And that would be okay, but I like who I am! I like wandering the fields beneath the transmission towers and fixing boats with my dad. I like reading books in the library, curled up on a windowsill. I like driving at night and hearing the crickets. 
->->

= nineteenC
# PB
// MAY GOES TO LAYERS
~ MayEntersLayers = true
I’ve learned so much on Layers’ Edge. I think I finally understand why I never could decide if I should leave my home for Lehigh, or build my future in Berks County. Because neither are what I need, at least right now.  
+ I’ve got so much left to learn. 
+ I still have my doubts. 
- I have questions about who I want to be. But they can only be answered by wandering. By being okay with being lost. 
I’ve fallen in love with the unknown that grows here, Jason. I’ve fallen in love with who I become when I’m willing to embrace my doubt. 
But Jason, your doubt is eating you away! 
->->

= twenty
# PB
You're turning into a ghost! If you let it, it will keep you here. Until you don't exist at all.

JASON
But what do I do next?

MAY
+ If The Layers taught me to embrace my doubt… maybe what you need is to wander a little longer. 
    -> twentyA ->
+ You know where you belong. Go graduate, Jason! 
    Face your doubt head on! Go out into the world with confidence.
    -> twentyB ->
--> twentyone

= twentyA 
// MAY SENDS JASON TO LAYERS
JASON
What?! May, are you serious? After everything that happened there? 

MAY
Yes! You’ll see, Jason! This time, forget about the destination. You’re not here to find me. You’re here to find yourself. Linger in your doubt and let yourself wander. 
What do you say? Give it a shot?

JASON
+ Okay... Yes! The world can wait a little longer. 
    -> twentyL ->
+ No, I know where I belong. It’s still my dream to graduate! 
    -> twentyAB ->
- <> I’ll be better for it. I know I’ll be okay. 
->->

= twentyAB
// JASON GRADUATES
I don’t doubt where I belong. I worry I won't make it there. And you’re right May. It’s time for me to embrace it. It’s time for me to graduate. That’s the only way I’ll ever know if I can make it in the city. 
And if I can’t? If I fail? Then I’ve learned something about myself. 
->->

= twentyB
// MAY SENDS JASON TO GRADUATE
JASON
You really think I’m ready? That I can make it in the city?

MAY
It doesn’t matter what I think. What do you believe?

JASON 
+ I'm not sure I’m ready… but that's part of graduation.
    -> twentyBA
+ I think I want to wander a little longer.
    ->twentyL
- I’ll be better for it. I know I’ll be okay.
->->

= twentyBA
// JASON GRADUATES
~ JasonGraduates = true
When I struggle, I’ll learn about myself. I'll be okay. 
->->

= twentyL
// JASON GOES TO LAYERS
~ JasonEntersLayers = true
There’s so much I haven’t seen. Questions I haven’t considered. I can’t be sure I’ll find the answers in The Layers. But I know I’ll learn something about myself, if only in the asking. I know I'll be okay. 
->->

= twentyone
# DIR 
As Jason reaches realization, we see his body change. Where light once speared his smoky form, it’s now refracted by his crystallizing skin. His bones are hidden behind his body made opaque. And soon, he’s as he was, long ago atop Shiloh Hills. No longer a ghost. 
-> continue

= complete 
->->

= continue
-> complete -> fishermanFinaleOne