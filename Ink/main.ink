INCLUDE characters.ink
INCLUDE shiloh2.ink

VAR MayAndJasonPlayedPirates = false
VAR MayAndJasonPlayedGhostHunters = false
VAR MayAndJasonPlayedPaleontologists = false
VAR MayAndJasonSawTransmissionTower = false
VAR MayAndJasonSawOneWaySigns = false

-> main.start
=== main ===
= start
#DEFAULTTHEME: white
#TITLE: THE COUNSEL IN THE CAVE 
+ Continue 
    # CLEAR 
    -> characters.start
--> DONE