===sanctuary===
-> start 

= start
#THEME: white
#DEFAULTTHEME: white
#TITLE: THE COUNSEL IN THE CAVE
#TITLE: ACT III, FINALE
-> one

= one 
# DIR 
The curtain rises on a cavernous round room, lit solely by a long cylinder of starlight that falls down through its center. Wide rings of stone steps ripple out from where the light lands, as if this were an amphitheater. At the amphitheater’s center is a stage. This is made all the more obvious by the ‘spotlight’ trained on it.
The sloped stone ceiling is held high by colossal stone pillars scattered around the ring. The round room’s edges are unseen, like the backstage of a theater. 
May enters from the audience. She should occupy the entirety of the performance space as if it were all part of the scene. As if the seats the audience finds themselves occupying are in fact seats within the Subterranean Sanctuary. 
It’s then Jason too enters from the audience. He appears to be a ghost flitting between the pillars. We can’t discern his precise form– only that he’s frightened, hiding in the dark.
-> two 

= two 
# DIR 
+ May looks upwards through the cylinder of starlight.
    -> twoO -> twoA -> two
+ May approaches center stage, where the starlight meets the floor.
    -> twoO -> twoB -> two 
+ {twoO >= 1} May is drawn to a broken pillar that’s supported by an enormous statue.
    -> twoO -> twoC -> three
+ {twoO >= 2} May notices the ghost passing between pillars.
    -> twoO -> twoD -> three

= twoO 
->->

= twoA 
Far above, we see a reflection of the mundane world. Suspended, upside-down, is The Old Band Room. It’s filled with students playing music, arranged in rings that mirror the amphitheater. It waves like an image on restless water. It looks like a portal home. 
    ->-> 

= twoB
The starlight pools in the amphitheater’s center. Looking through it, May can see another world, as if it were a portal to distant dimensions. Below, May beholds the full extent of The Layers. Convergent, distant lands. Intersecting, combining, reacting. 

May leans over the edge to peer into the void, but stays careful not to fall.
    ->-> 

= twoC
One pillar in particular, the closest to the center, is broken. There kneels, in the crumbled remains of the pillar’s base, a titanic statue, bracing the broken pillar on its back.

# DIA 
MAY
It’s like Atlas. Holding up the sky.
Who’s sky are you holding, Atlas?

# DIR 
As if in some strange answer, May then hears the sound of wind whistling through the theater. She turns to look out into the dark. Behind her, the statue silently raises its weary head to look out with her. 
    ->->

= twoD
# DIA 
MAY
Hello? 
    ->->

= three
# DIR 
A pause. It’s not like May expects an answer.

# DIA 
JASON
May?

# DIR 
The ghost pokes its head out from behind a stone pillar. It’s Jason, but changed. We can see through his faded skin to a faintly glowing skeleton. 

# DIA 
MAY
Jason! Jesus, Jason, is that you? 

JASON
Yeah… 

MAY
+ What are you doing here? Graduation is today! 
    You should be on the surface! At school! Or you’ll miss it! 
+ What happened to you? You look like a ghost! 
--> four 

= four 
JASON 
I came for you.
+ I came to rescue you.

    MAY
    Rescue me? Jesus, Jason. I’m not the one that needs saving. 

+ I need your help, May.

    MAY
    My help? 

- Hold on, start over. Tell me everything.
-> five 

= five 
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
I tried my best to find my way to you, but I couldn’t make sense of the forest. The trees… they kept changing. They brought me to a dungeon. The door was made of roots, like it was grown there just for me to find. 
->->

= fiveB 
~ JasonWanderedCave = true
They just hung there, out over the abyss. I wanted so badly just to look inside. But I couldn’t reach. 
Instead, there were endless stairs carved into the rock.
I tried my best to find my way to you, but I couldn’t make sense of the cavern. The steps brought me to… a dungeon. The door was set in stone like the entrance to a tomb. 
->->

= fiveC 
~ JasonWanderedCity = true
It rained the whole time. The puddles on the glass were like double-sided mirrors.
I tried my best to find my way to you, but the streets had no names. Like it was just a maze. 
No matter which way I turned, the city brought me back… to the dungeon. It was reflected in the glass no matter which way I turned. 
->->

= six 
MAY
What dungeon, Jason?

# DIR 
Jason’s smoky body shudders, as if blown by a gust of wind. The bones inside him rattle and buzz.

# DIA 
JASON
The dungeon… it was like the high school, May. 
But colder. Made of stone. 
And emptier, except for skeletons, moving through the halls like they were scheduled for classes. Sitting at desks, never breaking their gaze from endless reams of paperwork. 
I tried to leave there too. But I didn’t know which way to go. I only ended up confused, and scared, and led deeper into the dungeon. Until I met… them.
-> seven 

= seven
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
- It spoke so terribly.
-> eight 
    
= sevenA 
At his desk, he looked like any other administrator, nested in a giant pile of paperwork. 
And he invited me in. But when he spoke, his lips didn’t move. His eyes wouldn’t meet mine. 
The paperwork… it was only the Constrictor hiding in plain sight. 
I tried to leave. But that was when the serpent dragged the man from his seat, coils on his neck like a noose. He was limp. Nothing but a host for the paperwork snake. 
->->

= sevenB
Its coils trailed away into the shadows of the dungeon. They were flat, like scrolls of paper. The same kind the skeletons labored over. Their work fed him, May. Made him endless. 
->->

= eight
MAY
What did he say to you, Jason?

Jason lets a deep breath rise and fall, but no air flows from his lips. 

JASON
He told me… things he shouldn’t have known. Things about myself…
+ How I’m scared to leave Berks County.
     -> eightA ->
+ How I miss my mom. 
    -> eightB ->
--> nine 

= eightA 
+ How much I love my friends.
    How I worry I won't find any others. 
+ How I'm not a good enough musician. 
       How no matter how hard I try, I'll fail.
- Everything that’s in my head, May. 
->->

= eightB
+ Ever since she left us, May… 
+ Ever since she died. 
- How could that snake have known? 
->->

= nine 
I don’t know how I managed it, but somehow I got away. It’s all become a blur. I escaped. But again, I was lost. And before I left, it bit me. 
# DIR 
Jason turns his head to show May two wounds, puncturing his neck. Through his translucent frame, she can see how deep they go. Down to the glowing bone. 
# DIA 
JASON
I wandered deeper into the {fiveA: forest}{fiveB: cave}{fiveC:underground}. All the while I couldn’t stop thinking about what that snake said. I could feel myself begin to fade away. 

It was dark, May. And it was quiet. I was lost. But more than that, I didn’t know if I would ever be found again. 

I kept wandering. And eventually, <>
{
    - fiveA: the forest came unwound. Below I found a path of flying vines. 
    - fiveB: the cave began to break apart. Below the mountain, I found a path of floating stones. 
    - fiveC: the city’s bricks began to break apart. Beneath the strees I found suspended squares of sidewalk, like a path of floating stepping stones. 
}
It led me here. 
-> ten 

= ten 
# DIR 
Jason sinks lower, nearly melting to the stone step beneath him. 

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
    ++ So I wouldn't be reminded of my mom. 
    ++ Pretend I never got beat up?  
    Like I could ever leave that stuff behind. 
+ Just to prove to everyone I could? 
    ++ Why did I care so much about what other people thought?
        I never even considered what I wanted after graduation. 
    ++ Why did I want to be better than everyone else?
        That's all I ever cared about. 
- I don’t know what I was thinking. 

I can’t go back now! Not without knowing it’ll be okay!
-> eleven 

= eleven 
MAY
+ That’s just what you have to do, Jason. You don't need to know.
+ That snake was trying to trick you, Jason. You're going to be okay.

-JASON
What? May, what are you talking about?

MAY
You can’t wait for the doubt to disappear because it never will. It’s a part of who you are. It’s part of being here, on the cusp of graduation. On the edge of the unknown.
Just because you can’t see the end doesn’t mean you can’t begin. In fact, it means you have to. Or else you’ll never learn. You’ll never grow. You’ll never clarify your doubt. And you’ll stay a faded skeleton, and be nothing but a Constrictor’s victim. 
That doubt you feel? That’s not what’s stopping you. It’s your despair. That’s what you can’t afford. 
You’re going to be okay, Jason. You just have to believe you will be.  
-> twelve 

= twelve 
JASON
May… where is this coming from? Last time we talked… you weren’t okay. I came here because I thought you needed my help. 

MAY
I thought I needed help too. That’s why I came looking for The Counselor. But I’ve learned so much since then. 
At first, I was lost too. I came down…
+ To the Darkened University, floating in the snow.
    -> twelveA ->
+ To the Silken Trails, where giant spiders prey. 
    -> twelveB ->
+ To the Mirror-Mines in the Clouded Caves.
    -> twelveC ->
--> thirteen
    
= twelveA 
It was like a summer college tour when campus seems like a ghost town. Only it was cold. And I had no one to guide me. The rooms all seemed the same. The halls went on forever. 
->->

= twelveB
Imagine nets of intersecting telephone wires, but made of spider-webs. Like tightropes and mousetraps and no floor beneath you.
->->

= twelveC
Miners collect the crystals that grow there in the atmosphere. The ever-shifting caves create a mirror-maze. The miners know the way, but they’ve long forgotten how to speak. 
->->

= thirteen 
But there I met
+ Old Moondog the Fisherman, fishing in the {twelveA:snow}{twelveB:strands}{twelveC:clouds}.
    -> thirteenA ->
+ The Crazed Cartographer, with all his nonsense maps. 
    -> thirteenB ->
+ Echo the Astrologer, in her inverted tower. 
    -> thirteenC ->
--> fourteen 

= thirteenA
He’s been a good friend, looking out for me. He didn’t strike me as some all-knowing sage, like I thought the Counselor would be. But he knows The Layers well, and gave me some good advice. 
He told me to go out on my own. To let myself wander. 
(smiling) And then he told me not to take him too seriously.
->->

= thirteenB
He was such a funny guy. He always had his nose buried in one of his projects. He could barely take a minute to take a real look around him.
He promised that his maps would lead me home. I followed them for days, trying to make something of the nonsense. But that’s all they were. 
So I threw them out, and struck out on my own. 
The Cartographer wasn’t the counselor I expected to find. But I was forced to learn something important.

->->

= thirteenC
She was sad. Holed up at the bottom of her observatory, thinking she could see the stars. But all she ever saw were glowing fish in the Lake of The Layers, far far below.
She told me she could read my future. Show me the way home. And I believed her. I followed her directions for days. But then I realized… how should she know? How should she know me better than myself?
So I struck out alone, finally wandering.
The Astrologer wasn’t the counselor I expected to find. But I was forced to learn something important.
->->

= fourteen
Eventually I found my way...
+ To the Painted Harbor on the Sea of Stars.
    -> fourteenA ->
+ To the Dragon-Hive in the Eldest Garden. 
    -> fourteenB ->
+ To the Atlas-Origin on the Layers’ furthest edge. 
    -> fourteenC ->
--> fifteen 

= fourteenA
The people there were kind. They let me into their village. And they set me on my way across the Sea of Stars to you. 
->->

= fourteenB
I got to meet dragons, Jason! Dragons! I never would have thought of dragons living together like bees. But somehow they managed it. They built the biggest hive. They took me in when I was tired and set me on my way to you. 
->->

= fourteenC
A vast carven hand, wider than a mile, reaching up through the clouds to brace the Layers’ Edge. 
{
    - twoC:
        #INF 
        May motions to the statue that supports the broken pillar.
        #DIA 
        Like this one, I imagine. They say the Atlas-Origin holds the Layers apart, so the wanderers within can travel between them freely.
}
From there, I found my way here to you.
->->

= fifteen
I’ve met a lot of people on my way, Jason. Most of them, the happy ones, are wanderers. Like us. The difference is, they’re okay. They’re okay with being lost. 
It’s beautiful what they can be once they let go of…
+ Who they think they’re supposed to be.
+ Their despair in the face of doubt.
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
    Not here, in The Layers. Where maps are made of nonsense and the land laughs at prediction? No way would I find them. 
    And maybe that’s what they were trying to tell me all along, if only from afar. I had to find my way myself. 
+ They didn’t want to be found. 
    I realized… they came here to be lost. And maybe that’s what they were trying to tell me all along, if only from afar. 
+ I didn’t need them any more. 
    There was a time when I forgot about them. <>
    {
        - thirteenB: After I threw away the map the Cartographer gave me
        - thirteenC: After I disregarded the prediction the Astrologer gave me. 
    }
    That’s when I found <>
    {
        - fourteenA: The Painted Harbor.
        - fourteenB: The Dragon-Hive.
        - fourteenC: The Atlas-Origin. 
    }
    I found what I was looking for on my journey somewhere else. And that’s when I realized, I didn’t need to look for them. I could find my own way by letting myself be lost.
--> seventeen

= seventeen
JASON
So why are you here, May? You’re no ghost. If you understand The Layers, you can leave this crypt. You can finally find where you belong, like you've always wanted. 

MAY
This isn’t a crypt, Jason. It’s not a place to die. It’s where you can decide who you want to be, even if it's unclear you’ll get there. 
+ It’s a Crossroads. 
+ It’s a Theater. 
    A Cathedral Theater. 
	A stage.
+ It’s a Sanctuary. 
    A Subterranean Sanctuary.
--> eighteen

= eighteen 
May motions upwards through the cylinder of starlight. 
{
    - twoA: <> She shows him the waving portal to the world they left behind. 
    - else: -> twoA ->
}
Then she motions down, and Jason follows her gaze down along the starlight to its edge. 
{
    - twoB: <> Together they gaze into The Layers. 
    - else: -> twoB ->
}
-> nineteen

= nineteen
That’s why I’m here. I’ve decided. 
+ It’s time for me to graduate.
    -> nineteenA ->
+ I’m ready to go home.
    -> nineteenB ->
+ I’ve still got to wander. 
    -> nineteenC ->
--> twenty

= nineteenA
// MAY GRADUATES
~ MayGraduates = true
I’m done letting doubt stand between me and the world.  
+ Berks County will always be there for me. 
    -> nineteenAA ->
+ I’ve realized Berks County isn’t the same as I imagined it was. 
    -> nineteenAB ->
    
- Even if I don’t know where I’ll end up. Or even the road I’ll take. 
+ But from the Layerfolk I know that one day I’ll be okay. 
+ But these Layers have inspired me to seek what’s really out there. 
+ But I’ve learned to find meaning in the journey. 

- Even despite my doubts. Actually, because of my doubts. 
It’s that same doubt that’s eating you away, Jason!
->->

= nineteenAA 
+ Friends like you. 
    What’s been most important has been the people. And sure, they may be moving away. But I’ll always be able to reach them, no matter where I go.  
+ Shiloh Hills. 
		Places I know I can go back to, and be myself. 
+ My dad. 
		He’s not going anywhere. And I know I can always go home to him. 
-->->

= nineteenAB
+ High school is over. 
	That time has passed, and that’s okay. 
    I think what I loved so much about it was how I grew. And now I’m ready to grow into somewhere new. 
+ My friends are moving on. 
    The time we spent together has passed, and that’s okay.  
+ At least, I’ve changed. 
    I think what I love so much about that place is how I grew within it. I’m ready to grow into somewhere new. 
-->->

= nineteenB
// MAY GOES HOME
~ MayGoesHome = true
I’ve learned so much from the people of Layers’ Edge. And I’ve come to love this place, even with all its twists and turns. 
+ But I miss my home, Jason.
    -> nineteenBA ->
+ I miss my dad! 
    -> nineteenBB ->
+ I miss who I was in Berks County. 
    -> nineteenBC ->
-
+ I’ve come to love a lot about this place. But all my favorite places… they’re all parts of home. 
+ I’m not at home on Layers’ Edge. The times I’ve been most lost… they’re when I’m furthest from home.

- I’ve come to learn that this place is not my home. But I could have only ever learned that by first embracing my doubt. So I’m glad I did. 
But you, Jason… Your doubt is eating you away! 
->->

= nineteenBA
I miss the fields of Shiloh Hills and driving down the open roads at night. I miss the library and the boat shop.
For everything the Layers have to offer, nothing matches home for me. Now I know that’s where I belong. 
->->

= nineteenBB
I miss fixing boats and listening to him talk. Sure, I’ve made some friends in Layers’ Edge. But my family is the most important thing in the world to me. I don’t want to miss it. 
->->

= nineteenBC
I’m different here. And I know I’ll be different at college. And that would be okay, but I like who I am! I like wandering the fields beneath the transmission towers and fixing boats with my dad. I like reading books from the library and painting the sky. I like driving at night and listening to the crickets. 
->->

= nineteenC
// MAY GOES TO LAYERS
~ MayEntersLayers = true
I’ve learned so much, lost on Layers’ Edge. I think I finally understand why I never could decide if I should leave home for Lehigh, or build my future in Berks County. Because neither are what I need, at least right now.  
+ I’ve got so much left to learn. 
+ I still have my doubts. 
- I have questions about who I want to be. But they can only be answered by wandering. By being okay with being lost. 
I’ve fallen in love with the unknown that grows here, Jason. I’ve fallen in love with who I become when I’m willing to embrace my doubt. 
And Jason, it’s that same doubt that’s eating you away! 
->->

= twenty
You're turning into a ghost! If you let it, it will keep you here. Until you don't exist at all.

JASON
But what do I do next?

MAY
+ If The Layers taught me to embrace my doubt… maybe what you need is to wander a little longer. 
    -> twentyA ->
+ You know where you belong. Go graduate, Jason! 
    Accept the doubt you feel and go out into the world with confidence. . 
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
+ Yes. The world can wait a little longer. 
    -> twentyL
+ No. I know where I belong. It’s my dream to graduate. 
    -> twentyAB
- I’ll be better for it. I know I’ll be okay. 
->->

= twentyAB
// JASON GRADUATES
I don’t doubt where I belong. I doubt if I can make it there. And you’re right May. It’s time for me to embrace that doubt. It’s time for me to graduate. 
That’s the only way I’ll ever know if I can make it in the city. 
And if I can’t? If I fail? Then I’ve learned something about myself. 
->->

= twentyB
// MAY SENDS JASON TO GRADUATE
JASON
You really think I’m ready? You think that I can make it in the city?

MAY
It doesn’t matter what I think. What do you believe?

JASON 
+ I don’t know if I’m ready… but there’s only one way to find out. Yes.
    -> twentyBA
+ No. I think I’ve got to wander. 
    ->twentyL
- I’ll be better for it. I know I’ll be okay.
->->

= twentyBA
// JASON GRADUATES
~ JasonGraduates = true
I’m going to graduate. And if I’m not ready? If for some reason I fail? Then I’ve learned something about myself.
->->

= twentyL
// JASON GOES TO LAYERS
~ JasonEntersLayers = true
There’s so much I haven’t seen. Questions I haven’t asked myself. I can’t be sure I’ll find the answers in The Layers. But I know I’ll learn something about myself, if only in the asking. 
->->

= twentyone
# DIR 
As Jason comes to this realization, we see his body change. Where light once passed through his smoky form, it’s now become refracted by his crystallizing skin. His bones are hidden behind his body made opaque. And soon, he’s as he was, long ago atop Shiloh Hills. No longer a ghost. 
-> continue

= complete 
->->

= continue
-> complete -> fishermanFinaleOne