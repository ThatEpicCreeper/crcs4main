

#scoreboard vars
scoreboard objectives add bsPlayersLeft dummy
scoreboard objectives add bsLivesLeft dummy
scoreboard objectives add bsOnDeath deathCount
scoreboard objectives add bsStartTimer dummy
scoreboard objectives add bsInGame dummy
scoreboard objectives add bsTimeLeft dummy
scoreboard objectives add bsInOvertime dummy
scoreboard objectives add bsRespawnsLeft dummy
scoreboard objectives add bsOnKill playerKillCount
scoreboard objectives add bsTotalKills playerKillCount
scoreboard objectives add bsFinalPlacement dummy
scoreboard objectives add bsEndSequence dummy
scoreboard objectives add bsBuildsLeft dummy
scoreboard objectives add bsBuildsPlaced dummy
scoreboard objectives add bsGainBuildProg dummy
scoreboard objectives add bsDeathSequence dummy

#display current score text
team join eventScoresDisp Cu
execute if score dummy bsInGame matches 1.. run team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}

execute if score dummy bsInGame matches 1.. run scoreboard players set Cu mainInfo 9

#display game
team add bsDisplay
team modify bsDisplay color gold
team join bsDisplay B
team modify bsDisplay suffix {"text":"uildoff Showdown II","color":"gold"}

team add bsDisplayMap
team modify bsDisplayMap color yellow
execute if score dummy bsInGame matches 1.. run team join bsDisplayMap Map
execute if score dummy bsInGame matches 1.. run team modify bsDisplayMap suffix {"text":": Towns","color":"yellow"}

#zone
execute if score dummy bsInGame matches 1.. run scoreboard players remove dummy bsTimeLeft 1
execute if score dummy bsTimeLeft matches 10800 run tellraw @a {"text":"[Warning] The border is shrinking!","bold":true,"color":"red"}
execute if score dummy bsTimeLeft matches 10800 run execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1
execute if score dummy bsTimeLeft matches 10799 run worldborder set 21 540

bossbar set bs:timeleft players @a
execute if score dummy bsTimeLeft matches 10800.. run bossbar set bs:timeleft name {"text":"Border is Safe","bold":true,"color":"aqua"}
execute if score dummy bsTimeLeft matches 1..10799 run bossbar set bs:timeleft name {"text":"Border Shrinking!","bold":true,"color":"red"}
execute if score dummy bsInGame matches 1.. run bossbar set bs:timeleft visible true
execute unless score dummy bsInGame matches 1.. run bossbar set bs:timeleft visible false

bossbar set bs:timeleft color blue
bossbar set bs:timeleft max 14400
execute store result bossbar bs:timeleft value run scoreboard players get dummy bsTimeLeft

#overtime
execute if score dummy bsTimeLeft matches 1 run scoreboard players set dummy bsInOvertime 1
execute if score dummy bsTimeLeft matches 1 run tellraw @a {"text":"[Warning] Entering Overtime! Everyone has one life remaining!","bold":true,"color":"red"}
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=3..}] at @s run effect give @s minecraft:absorption 500 4 true
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=3..}] at @s run tellraw @s {"text":"You received +10 Absorption Hearts! (Retaining all 3 lives)","bold":true,"color":"yellow"}
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=3..}] at @s run scoreboard players add @s thisGameScore 3
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=3..}] at @s run tellraw @s ["",{"text":"+3 Score ","color":"green"},{"text":"(Keeping 3 lives in Overtime)","color":"aqua"}]
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=2}] at @s run effect give @s minecraft:absorption 500 2 true
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=2}] at @s run tellraw @s {"text":"You received +6 Absorption Hearts! (Retaining 2 lives)","bold":true,"color":"yellow"}
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=2}] at @s run scoreboard players add @s thisGameScore 1
execute if score dummy bsTimeLeft matches 1 run execute as @a[scores={bsLivesLeft=2}] at @s run tellraw @s ["",{"text":"+1 Score ","color":"green"},{"text":"(Keeping 2 lives in Overtime)","color":"aqua"}]
execute if score dummy bsTimeLeft matches 1 run scoreboard players set @a[scores={bsLivesLeft=1..}] bsRespawnsLeft 0
execute if score dummy bsTimeLeft matches 1 run scoreboard players set @a[scores={bsLivesLeft=1..}] bsLivesLeft 1
execute if score dummy bsTimeLeft matches 1 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 1
execute if score dummy bsInOvertime matches 1 run bossbar set bs:timeleft name {"text":"Overtime!","bold":true,"color":"red"}
execute if score dummy bsInOvertime matches 1 run effect give @a[scores={bsLivesLeft=1..}] glowing 10 4 true
execute if score dummy bsTimeLeft matches 1..2 run execute as @a at @s run function buildoffshowdowniiost:stop
execute if score dummy bsTimeLeft matches 1 run execute as @a at @s run function bs_dm_ost:play


#display hud
execute if score dummy bsInGame matches 1.. run execute as @a[team=!spec] at @s run title @s actionbar ["",{"text":"Your Kills: ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"bsTotalKills"},"bold":true,"color":"gold"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Respawns Left: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"bsRespawnsLeft"},"bold":true,"color":"green"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Builds Left: ","bold":true,"color":"dark_purple"},{"score":{"name":"@s","objective":"bsBuildsLeft"},"bold":true,"color":"light_purple"}]


#on kill
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnKill=1..}] at @s run scoreboard players add @s thisGameScore 4
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnKill=1..}] at @s run tellraw @s ["",{"text":"+4 Score ","color":"green"},{"text":"(Kill)","color":"aqua"}]
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnKill=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 2
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnKill=1..}] at @s run effect give @s instant_health 1 2 true
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnKill=1..}] at @s run effect give @s strength 5 1 true
execute as @a[scores={bsOnKill=1..}] at @s run scoreboard players set @s bsOnKill 0


#on death
execute unless score dummy bsInGame matches 1.. run execute if score @s bsDeathSequence matches 1.. run scoreboard players set @s bsDeathSequence 0
execute as @a at @s run execute if score @s bsDeathSequence matches 1.. run scoreboard players remove @s bsDeathSequence 1

execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsDeathSequence=1}] at @s run execute at @e[type=armor_stand,tag=bsBusSpawn] run tp @s ~ ~-4.5 ~
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsDeathSequence=1}] at @s run effect give @s slow_falling 50 0 true
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsDeathSequence=1}] at @s run effect give @s resistance 20 3 true
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsDeathSequence=1}] at @s run effect give @a minecraft:health_boost 10000 4 true
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsDeathSequence=1}] at @s run effect give @a minecraft:regeneration 10 5 true

execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players remove @s bsLivesLeft 1
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players remove @s bsRespawnsLeft 1
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run function crc:buildoffshowdown/deathinv
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run effect give @a minecraft:health_boost 10000 4 true
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run effect give @a minecraft:instant_health 1 4 true
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.6 2
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players set @s bsDeathSequence 3
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players add @a[team=!spec,distance=0.1..,scores={bsLivesLeft=1..}] thisGameScore 1
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..}] at @s run tellraw @a[team=!spec,distance=0.1..,scores={bsLivesLeft=1..}] ["",{"text":"+1 Score ","color":"green"},{"text":"(Survival)","color":"aqua"}]
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsOnDeath=1..,bsRespawnsLeft=0}] at @s run title @s title {"text":"No Respawns Left!","bold":true,"color":"red"}
execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players set @s bsOnDeath 0

#lives check
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.4 2
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"red"},{"text":" was eliminated!","bold":true,"color":"red"}]
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 4 run scoreboard players add @s thisGameScore 6
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 4 run tellraw @s ["",{"text":"+6 Score ","color":"green"},{"text":"(Placed 4th)","color":"aqua"}]
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 3 run scoreboard players add @s thisGameScore 8
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 3 run tellraw @s ["",{"text":"+8 Score ","color":"green"},{"text":"(Placed 3rd)","color":"aqua"}]
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 2 run scoreboard players add @s thisGameScore 12
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 2 run tellraw @s ["",{"text":"+12 Score ","color":"green"},{"text":"(Placed 2nd)","color":"aqua"}]
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run scoreboard players operation @s bsFinalPlacement = dummy totalPlayers
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run scoreboard players remove dummy bsPlayersLeft 1
execute if score dummy bsInGame matches 1.. run execute as @a[scores={bsLivesLeft=0}] at @s run gamemode spectator @s
execute as @a[scores={bsLivesLeft=0}] at @s run scoreboard players set @s bsLivesLeft -1

#building
function crc:buildoffshowdown/building

#start timer
execute unless score dummy bsStartTimer matches ..-101 run scoreboard players remove dummy bsStartTimer 1

execute if score dummy bsStartTimer matches 900 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bsStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsStartTimer matches 900 run tellraw @a ["",{"text":"Welcome to Buildoff Showdown II!","bold":true,"color":"red"},{"text":"\n\n"},{"text":"In this game, players attempt to survive to the end while eliminating others!","color":"green"}]
execute if score dummy bsStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsStartTimer matches 800 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bsStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsStartTimer matches 800 run tellraw @a {"text":"- All players spawn with 3 lives (2 respawns)\n\n- When you lose all 3, you're out!","color":"green"}
execute if score dummy bsStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsStartTimer matches 700 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bsStartTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsStartTimer matches 700 run tellraw @a {"text":"- The border will begin to shrink after 3 minutes.\n\n- 12 minutes after the game starts, overtime will begin!\n\n- All players' lives are reduced to 1 during overtime!","color":"green"}
execute if score dummy bsStartTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsStartTimer matches 600 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bsStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsStartTimer matches 600 run tellraw @a ["",{"text":"- Chests are scattered around the map with loot. Find these and gear up!\n\n- Collecting ","color":"green"},{"text":"bricks ","color":"red"},{"text":"from chests each grant ","color":"green"},{"text":"+5 Builds, ","color":"light_purple"},{"text":"allowing you to build on the map!","color":"green"}]
execute if score dummy bsStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsStartTimer matches 500 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bsStartTimer matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsStartTimer matches 500 run tellraw @a ["",{"text":"Scoring for this game (unmultiplied):","bold":true,"color":"green"},{"text":"\n\n"},{"text":"- Overall Placements:","color":"dark_aqua"},{"text":"\n"},{"text":"1st - 20","color":"gold"},{"text":"\n"},{"text":"2nd - 12","color":"gray"},{"text":"\n"},{"text":"3rd - 8","color":"red"},{"text":"\n"},{"text":"4th - 6","color":"dark_gray"},{"text":"\n\n"},{"text":"- Outlast another players' life -> 1","color":"light_purple"},{"text":"\n"},{"text":"- Kill -> 5 (including outlast score)","color":"red"},{"text":"\n\n"},{"text":"- Retaining all 3 lives into overtime -> 3","color":"yellow"},{"text":"\n"},{"text":"- Retaining 2 lives into overtime -> 1","color":"aqua"}]
execute if score dummy bsStartTimer matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsStartTimer matches 380 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bsStartTimer matches 380 run tellraw @a {"text":"The game will begin shortly...","color":"red"}

execute if score dummy bsStartTimer matches 300 run function crc:buildoffshowdown/randomchests
execute if score dummy bsStartTimer matches 300 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy bsStartTimer matches 256 run execute as @a at @s run function buildoffshowdowniiost:play
execute if score dummy bsStartTimer matches 200 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 100 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 80 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 60 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bsStartTimer matches 40 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bsStartTimer matches 20 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy bsStartTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bsStartTimer matches 2 run execute as @a[team=!spec] at @s run function crc:buildoffshowdown/deathinv
execute if score dummy bsStartTimer matches 0 run tellraw @a {"text":"The game has started!","color":"green"}
execute if score dummy bsStartTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy bsStartTimer matches 0 run scoreboard players set dummy bsInGame 1
execute if score dummy bsStartTimer matches 0 run execute as @e[type=armor_stand,tag=bsBusSpawn] at @s run tp @a[team=!spec] ~ ~-4.5 ~
execute if score dummy bsStartTimer matches 0 run effect give @a[team=!spec] minecraft:weakness 20 10 true
execute if score dummy bsStartTimer matches 0 run effect give @a[team=!spec] slow_falling 50 0 true

#no slow falling
execute if score dummy bsInGame matches 1.. run execute as @a at @s run execute unless block ~ ~-1 ~ air run effect clear @s slow_falling

#game end
execute if score dummy bsInGame matches 1.. run execute if score dummy bsPlayersLeft matches 0..1 run scoreboard players set @a[team=!spec,scores={bsLivesLeft=1..}] bsFinalPlacement 1
execute if score dummy bsInGame matches 1.. run execute if score dummy bsPlayersLeft matches 0..1 run scoreboard players add @a[team=!spec,scores={bsLivesLeft=1..}] thisGameScore 20
execute if score dummy bsInGame matches 1.. run execute if score dummy bsPlayersLeft matches 0..1 run tellraw @a[team=!spec,scores={bsLivesLeft=1..}] ["",{"text":"+20 Score ","color":"green"},{"text":"(Placed 1st)","color":"aqua"}]
execute if score dummy bsInGame matches 1.. run execute if score dummy bsPlayersLeft matches 0..1 run effect give @a resistance 30 4 true
execute if score dummy bsInGame matches 1.. run execute if score dummy bsPlayersLeft matches 0..1 run scoreboard players set dummy bsEndSequence 601

#end sequence
execute if score dummy bsEndSequence matches -1.. run scoreboard players remove dummy bsEndSequence 1

execute if score dummy bsEndSequence matches 600 run execute as @a at @s run function buildoffshowdowniiost:stop
execute if score dummy bsEndSequence matches 600 run execute as @a at @s run function bs_dm_ost:stop
execute if score dummy bsEndSequence matches 600 run title @a title {"text":"Game Over!","bold":true,"color":"green"}
execute if score dummy bsEndSequence matches 600 run title @a subtitle ["",{"selector":"@a[scores={bsLivesLeft=1..}]","bold":true,"color":"gold"},{"text":" has won!","bold":true,"color":"gold"}]
execute if score dummy bsEndSequence matches 600 run title @a times 0 100 10
execute if score dummy bsEndSequence matches 600 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
execute if score dummy bsEndSequence matches 600 run clear @a
execute if score dummy bsEndSequence matches 600 run scoreboard players set dummy bsInGame 0
execute if score dummy bsEndSequence matches 600 run scoreboard players set dummy bsInOvertime 0

execute if score dummy bsEndSequence matches 600 run team modify player1 suffix ""
execute if score dummy bsEndSequence matches 600 run team modify player2 suffix ""
execute if score dummy bsEndSequence matches 600 run team modify player3 suffix ""
execute if score dummy bsEndSequence matches 600 run team modify player4 suffix ""

execute if score dummy bsEndSequence matches 500 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy bsEndSequence matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsEndSequence matches 500 run tellraw @a {"text":"Final Placements:","bold":true,"color":"gold"}
execute if score dummy bsEndSequence matches 500 run tellraw @a ["",{"text":"1st - ","bold":true,"color":"yellow"},{"selector":"@a[scores={bsFinalPlacement=1}]","bold":true,"color":"yellow"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 2.. run tellraw @a ["",{"text":"2nd - ","bold":true,"color":"#D7D6D7"},{"selector":"@a[scores={bsFinalPlacement=2}]","bold":true,"color":"#D7D6D7"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 3.. run tellraw @a ["",{"text":"3rd - ","bold":true,"color":"#B76E79"},{"selector":"@a[scores={bsFinalPlacement=3}]","bold":true,"color":"#B76E79"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 4.. run tellraw @a ["",{"text":"4th - ","bold":true,"color":"gray"},{"selector":"@a[scores={bsFinalPlacement=4}]","bold":true,"color":"gray"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 5.. run tellraw @a ["",{"text":"5th - ","bold":true,"color":"gray"},{"selector":"@a[scores={bsFinalPlacement=5}]","bold":true,"color":"gray"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 6.. run tellraw @a ["",{"text":"6th - ","bold":true,"color":"gray"},{"selector":"@a[scores={bsFinalPlacement=6}]","bold":true,"color":"gray"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 7.. run tellraw @a ["",{"text":"7th - ","bold":true,"color":"gray"},{"selector":"@a[scores={bsFinalPlacement=7}]","bold":true,"color":"gray"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 8.. run tellraw @a ["",{"text":"8th - ","bold":true,"color":"gray"},{"selector":"@a[scores={bsFinalPlacement=8}]","bold":true,"color":"gray"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 9.. run tellraw @a ["",{"text":"9th - ","bold":true,"color":"gray"},{"selector":"@a[scores={bsFinalPlacement=9}]","bold":true,"color":"gray"}]
execute if score dummy bsEndSequence matches 500 run execute if score dummy totalPlayers matches 10.. run tellraw @a ["",{"text":"10th - ","bold":true,"color":"gray"},{"selector":"@a[scores={bsFinalPlacement=10}]","bold":true,"color":"gray"}]
execute if score dummy bsEndSequence matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsEndSequence matches 400 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy bsEndSequence matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsEndSequence matches 400 run tellraw @a {"text":"Kills Per Player:","bold":true,"color":"red"}
execute if score dummy bsEndSequence matches 400 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" - ","color":"gold"},{"score":{"name":"@s","objective":"bsTotalKills"},"color":"gold"}]
execute if score dummy bsEndSequence matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsEndSequence matches 300 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy bsEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsEndSequence matches 300 run tellraw @a {"text":"Builds Placed:","bold":true,"color":"dark_purple"}
execute if score dummy bsEndSequence matches 300 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" - ","color":"light_purple"},{"score":{"name":"@s","objective":"bsBuildsPlaced"},"color":"light_purple"}]
execute if score dummy bsEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsEndSequence matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy bsEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bsEndSequence matches 200 run tellraw @a {"text":"Scores this game (unmultiplied):","bold":true,"color":"green"}
execute if score dummy bsEndSequence matches 200 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"aqua"}]
execute if score dummy bsEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bsEndSequence matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy bsEndSequence matches 100 run tellraw @a {"text":"Returning to lobby in 5 seconds...","color":"red"}

execute if score dummy bsEndSequence matches 1 run function crc:tolobby


