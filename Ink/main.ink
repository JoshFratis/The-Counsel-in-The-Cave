INCLUDE characters.ink
INCLUDE shiloh2.ink
INCLUDE sanctuary.ink
INCLUDE fishermanFinaleOne.ink
INCLUDE fishermanFinaleTwoTogether.ink
INCLUDE fishermanFinaleTwoApart
INCLUDE credits.ink



//Set in Shiloh
VAR MayAndJasonPlayedPirates = false
VAR MayAndJasonPlayedGhostHunters = false
VAR MayAndJasonPlayedPaleontologists = false
VAR MayAndJasonSawTransmissionTower = false
VAR MayAndJasonSawOneWaySigns = false

// Set in Sanctuary
VAR JasonWanderedForest = false
VAR JasonWanderedCave = false
VAR JasonWanderedCity = false

VAR MayGoesHome = false
VAR MayGraduates = false
VAR MayEntersLayers = false
VAR JasonGraduates = false
VAR JasonEntersLayers = false

VAR MoondogFishesFireEscape = false
VAR MoondogFishesGondola = false
-> main.start
=== main ===
= start
#DEFAULTTHEME: white
#TITLE: THE COUNSEL IN THE CAVE 
+ Continue 
    -> sanctuary.start
--> DONE