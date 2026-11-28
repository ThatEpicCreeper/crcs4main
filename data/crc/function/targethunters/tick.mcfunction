#scoreboard vars
scoreboard objectives add thCurrentRound dummy
scoreboard objectives add thInGame dummy
scoreboard objectives add thInRound dummy
scoreboard objectives add thInDeathmatch dummy
scoreboard objectives add thStartTimer dummy
scoreboard objectives add thIntermission dummy
scoreboard objectives add thTurnCD dummy
scoreboard objectives add thRoundCD dummy
scoreboard objectives add thRoundTimeLeft dummy
scoreboard objectives add thDMQual dummy
scoreboard objectives add thPlayersLeft dummy
scoreboard objectives add thTurnOrder dummy
scoreboard objectives add thCurrentTurn dummy
scoreboard objectives add thOnDeath deathCount
scoreboard objectives add thOnKill totalKillCount
scoreboard objectives add thDeathSequence dummy
scoreboard objectives add thEndSequence dummy
scoreboard objectives add thRandomChestRoll dummy
scoreboard objectives add thTotalKills totalKillCount
scoreboard objectives add thStarsFound dummy
scoreboard objectives add thRoundsSurvived dummy
scoreboard objectives add thRoundsWon dummy
scoreboard objectives add thRevealChestTime dummy
scoreboard objectives add thUseCopperChest minecraft.used:minecraft.copper_chest
scoreboard objectives add thUseTarget minecraft.used:minecraft.target
scoreboard objectives add thUseGlowInkSac minecraft.used:minecraft.glow_ink_sac
scoreboard objectives add thUseLightGrayDye minecraft.used:minecraft.light_gray_dye
scoreboard objectives add thUsePrismarineCrystals minecraft.used:minecraft.prismarine_crystals


#display game
team add thDisplay
team modify thDisplay color gold
team join thDisplay Ta
team modify thDisplay suffix {"text":"rget Hunters","color":"gold"}

team add thDisplayRound
team modify thDisplayRound color yellow
execute if score dummy thInGame matches 1.. run team join thDisplayRound Map:

## CUSTOMISABLE
# say round and map
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 1 run team modify thDisplayRound suffix {"text":" 1/5 (Towers XL)","color":"yellow"}
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 2 run team modify thDisplayRound suffix {"text":" 2/5 (Winter Wonderland)","color":"yellow"}
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 3 run team modify thDisplayRound suffix {"text":" 3/5 (Secret Garden)","color":"yellow"}
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 4 run team modify thDisplayRound suffix {"text":" 4/5 (Space Station)","color":"yellow"}
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 5 run team modify thDisplayRound suffix {"text":" 5/5 (The Office)","color":"yellow"}

## =

# use abilities
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseGlowInkSac=1..}] at @s run effect give @a[tag=!thTarget,team=!spec] glowing 8 1 true
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseGlowInkSac=1..}] at @s run tellraw @a ["",{"selector":"@a[tag=thTarget]","color":"aqua"},{"text":" used Hunter Glowing! ","color":"aqua"},{"text":"All hunters will now glow for 8s.","color":"green"}]
scoreboard players set @a thUseGlowInkSac 0

execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseLightGrayDye=1..}] at @s run effect give @s invisibility 5 1 true
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseLightGrayDye=1..}] at @s run tellraw @a ["",{"selector":"@a[tag=thTarget]","color":"gray"},{"text":" used Invisibility! (5s)","color":"gray"}]
scoreboard players set @a thUseLightGrayDye 0

execute if score dummy thInGame matches 1.. run execute as @a[scores={thUsePrismarineCrystals=1..}] at @s run effect give @s speed 7 1 true
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUsePrismarineCrystals=1..}] at @s run tellraw @a ["",{"selector":"@a[tag=thTarget]","color":"gold"},{"text":" used Speed Boost! (7s)","color":"gold"}]
scoreboard players set @a thUsePrismarineCrystals 0

execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest1] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest2] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest3] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest4] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest5] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest6] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest7] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest8] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest9] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run execute as @e[type=marker,tag=thChest10] at @s run summon minecraft:shulker ~ ~-2 ~ {NoAI:1b,Invulnerable:1b,Glowing:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run scoreboard players set dummy thRevealChestTime 240
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseCopperChest=1..}] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" used Reveal Chests! ","color":"aqua"},{"text":"Chest locations will be revealed for 12s.","color":"green"}]
scoreboard players set @a thUseCopperChest 0

execute if score dummy thInGame matches 1.. run execute if score dummy thRevealChestTime matches 1 run execute as @e[type=shulker] at @s run kill @s

execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseTarget=1..}] at @s run effect give @a[tag=thTarget] glowing 3 1 true
execute if score dummy thInGame matches 1.. run execute as @a[scores={thUseTarget=1..}] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"red"},{"text":" used Eagle Eyes! ","color":"red"},{"text":"The target will glow for 3s.","color":"gold"}]
scoreboard players set @a thUseTarget 0

# on kill
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run execute if score dummy thRoundTimeLeft matches 1.. run scoreboard players add @s thisGameScore 1
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run execute if score dummy thRoundTimeLeft matches 1.. run tellraw @s ["",{"text":"+1 Score ","color":"green"},{"text":"(Target Kill Bonus)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run scoreboard players add @s thisGameScore 1
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run tellraw @s ["",{"text":"+1 Score ","color":"green"},{"text":"(Kill)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run effect give @s instant_health 1 4 true
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run effect give @s saturation 1 4 true
execute as @a[scores={thOnKill=1..}] at @s run scoreboard players set @s thOnKill 0

# on death
execute as @a at @s run execute if score @s thDeathSequence matches 1.. run scoreboard players remove @s thDeathSequence 1

execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 1 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn1]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 2 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn2]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 3 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn3]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 4 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn4]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 5 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn5]
#execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run gamemode spectator @s

execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.8 2
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run bossbar set targethunters:timeleft visible false
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run scoreboard players set dummy thRevealChestTime 2
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run tellraw @a {"text":"The target has been eliminated!","color":"red"}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches ..3 run scoreboard players set dummy thTurnCD 141
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run clear @a
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run scoreboard players set @s thDeathSequence 9
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run scoreboard players set @s thDMQual 0
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run scoreboard players set dummy thRoundTimeLeft -10
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run scoreboard players operation dummy thPlayersLeft -= 1 constant
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute if score dummy thPlayersLeft matches 2.. run function crc:targethunters/startdeathmatch

execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run clear @a
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run gamemode spectator @a[team=!spec]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run tellraw @a ["",{"text":"Round winner: ","color":"light_purple"},{"selector":"@a[scores={thDMQual=1..}]","color":"red"},{"text":"!","color":"red"}]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a times 0 100 10
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a subtitle {"text":"won the round!","bold":true,"color":"dark_aqua"}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a title {"selector":"@a[scores={thDMQual=1..}]","bold":true,"color":"blue"}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players add @a[scores={thDMQual=1..}] thisGameScore 5
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run tellraw @a[scores={thDMQual=1..}] ["",{"text":"+5 Score ","color":"green"},{"text":"(Round Win)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players add @a[scores={thDMQual=1..}] thRoundsWon 1
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players set dummy thRoundCD 141

execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run tag @a remove thTarget
execute as @a[scores={thOnDeath=1..}] at @s run scoreboard players set @s thOnDeath 0

# show target
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run title @a actionbar ["",{"text":"Target: ","bold":true,"color":"gold"},{"selector":"@a[tag=thTarget]","color":"yellow"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run title @a actionbar ["",{"text":"","bold":true,"color":"gold"}]

# hunter kb resist and effects
execute if score dummy thInGame matches 1.. run execute as @a[tag=!thTarget] at @s run attribute @s minecraft:knockback_resistance modifier add th_kb_resist 100 add_value
execute if score dummy thInGame matches 1.. run execute as @a[tag=!thTarget] at @s run effect give @s minecraft:resistance 1 4 true
execute if score dummy thInGame matches 1.. run execute as @a[tag=thTarget] at @s run attribute @s minecraft:knockback_resistance modifier remove th_kb_resist
execute if score dummy thInGame matches 1.. run execute unless score dummy thInDeathmatch matches 1.. run execute as @a[tag=thTarget] at @s run effect give @s minecraft:weakness 1 4 true
execute if score dummy thInGame matches 1.. run effect give @a night_vision 30 1 true

# skip round nether star
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run execute as @a[tag=thTarget] at @s run execute if items entity @s container.* minecraft:nether_star run execute as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.7 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run execute as @a[tag=thTarget] at @s run execute if items entity @s container.* minecraft:nether_star run tellraw @a ["",{"text":"The Target ","color":"red"},{"text":"has found the ","color":"gold"},{"text":"Nether Star!","color":"yellow"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run execute as @a[tag=thTarget] at @s run execute if items entity @s container.* minecraft:nether_star run scoreboard players add @s thisGameScore 3
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run execute as @a[tag=thTarget] at @s run execute if items entity @s container.* minecraft:nether_star run tellraw @s ["",{"text":"+3 Score ","color":"green"},{"text":"(Found Nether Star)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run execute as @a[tag=thTarget] at @s run execute if items entity @s container.* minecraft:nether_star run scoreboard players add @s thStarsFound 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run execute as @a[tag=thTarget] at @s run execute if items entity @s container.* minecraft:nether_star run scoreboard players set dummy thRoundTimeLeft 1


# survive round
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute as @a at @s run bossbar set targethunters:timeleft visible false
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run scoreboard players set dummy thRevealChestTime 2
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run tellraw @a {"text":"The target has survived the round!","color":"aqua"}
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches ..3 run scoreboard players set dummy thTurnCD 141
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run clear @a
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run effect clear @a
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run scoreboard players add @a[tag=thTarget] thisGameScore 4
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run tellraw @a[tag=thTarget] ["",{"text":"+4 Score ","color":"green"},{"text":"(Survived The Hunt)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run scoreboard players add @a[tag=thTarget] thRoundsSurvived 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute if score dummy thPlayersLeft matches 2.. run function crc:targethunters/startdeathmatch

execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run clear @a
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run gamemode spectator @a[team=!spec]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run tellraw @a ["",{"text":"Round winner: ","color":"light_purple"},{"selector":"@a[scores={thDMQual=1..}]","color":"red"},{"text":"!","color":"red"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a times 0 100 10
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a subtitle {"text":"won the round!","bold":true,"color":"dark_aqua"}
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a title {"selector":"@a[scores={thDMQual=1..}]","bold":true,"color":"blue"}
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players add @a[scores={thDMQual=1..}] thisGameScore 5
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run tellraw @a[scores={thDMQual=1..}] ["",{"text":"+5 Score ","color":"green"},{"text":"(Round Win)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players add @a[scores={thDMQual=1..}] thRoundsWon 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players set dummy thRoundCD 141

execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run tag @a remove thTarget

# no drop in game
execute if score dummy thInGame matches 1.. run function drops:nodrop

#display current score text
team join eventScoresDisp Cu
execute if score dummy thInGame matches 1.. run team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}

execute if score dummy thInGame matches 1.. run scoreboard players set Cu mainInfo 9

# round timer control
execute unless score dummy thTurnCD matches ..-101 run scoreboard players remove dummy thTurnCD 1
execute unless score dummy thRoundCD matches ..-101 run scoreboard players remove dummy thRoundCD 1
execute unless score dummy thRoundTimeLeft matches ..-101 run scoreboard players remove dummy thRoundTimeLeft 1
execute unless score dummy thRevealChestTime matches ..-101 run scoreboard players remove dummy thRevealChestTime 1

# time left
bossbar add targethunters:timeleft {"text":"Round Time Remaining","bold":true,"color":"red"}
bossbar set targethunters:timeleft color red
bossbar set targethunters:timeleft style notched_6
bossbar set targethunters:timeleft name {"text":"Round Time Remaining","bold":true,"color":"red"}
bossbar set targethunters:timeleft max 1200
bossbar set targethunters:timeleft players @a
execute store result bossbar targethunters:timeleft value run scoreboard players get dummy thRoundTimeLeft

#start timer
execute unless score dummy thStartTimer matches ..-101 run scoreboard players remove dummy thStartTimer 1

execute if score dummy thStartTimer matches 900 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thStartTimer matches 900 run tellraw @a ["",{"text":"Welcome to Target Hunters!","bold":true,"color":"aqua"},{"text":"\n\n"},{"text":"In this game, the target must survive the hunt, while the hunters eliminate them!","color":"green"}]
execute if score dummy thStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thStartTimer matches 800 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thStartTimer matches 800 run tellraw @a ["",{"text":"Each player will take turns being the target once per round. \n\nThe target can outrun the hunters for the duration of the round, or search for the nether star to skip it!","color":"green"}]
execute if score dummy thStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thStartTimer matches 700 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thStartTimer matches 700 run tellraw @a ["",{"text":"Skipping a round with a nether star will earn you additional points, on top of the standard survival points. \nChests also contain random powerups that can be used by the target.","color":"green"}]
execute if score dummy thStartTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thStartTimer matches 600 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thStartTimer matches 600 run tellraw @a ["",{"text":"The hunters must eliminate the target before the time runs out! \nEliminating a player during the target phase will earn an additional point.","color":"green"}]
execute if score dummy thStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thStartTimer matches 500 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thStartTimer matches 500 run tellraw @a ["",{"text":"Any player who survived their round will qualify for deathmatch. \nIf there is at least two players remaining, a free-for-all pvp deathmatch will start, to determine a winner.","color":"green"}]
execute if score dummy thStartTimer matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thStartTimer matches 400 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thStartTimer matches 400 run tellraw @a ["",{"text":"Scoring for this game (unmultiplied):","bold":true,"color":"green"},{"text":"\n\n"},{"text":"- Surviving a round as the target -> 4","color":"aqua"},{"text":"\n"},{"text":"- Finding the nether star -> 3","color":"yellow"},{"text":"\n\n"},{"text":"- Killing the target -> 2","color":"gold"},{"text":"\n"},{"text":"- Kill a player during deathmatch -> 1","color":"red"},{"text":"\n\n"},{"text":"- Deathmatch winner/only target survivor -> 5","color":"light_purple"}]
execute if score dummy thStartTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thStartTimer matches 330 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 330 run tellraw @a {"text":"The game will begin shortly...","color":"red"}

execute if score dummy thStartTimer matches 250 run function crc:targethunters/newround
execute if score dummy thStartTimer matches 250 run scoreboard players set dummy thInGame 1

# new turn
execute if score dummy thTurnCD matches 140.. run effect give @a invisibility 7 1 true
execute if score dummy thTurnCD matches 140.. run effect give @a regeneration 7 4 true
execute if score dummy thTurnCD matches 140.. run effect give @a saturation 7 4 true
execute if score dummy thTurnCD matches 140.. run effect give @a resistance 7 4 true
execute if score dummy thTurnCD matches 140 run tellraw @a {"text":"The next turn will begin shortly...","color":"light_purple"}
execute if score dummy thTurnCD matches 140 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1 0.5

execute if score dummy thTurnCD matches 41 run tellraw @a {"text":"The next target is...","color":"red"}
execute if score dummy thTurnCD matches 41 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1 0.5

execute if score dummy thTurnCD matches 1 run function crc:targethunters/newturn

# in deathmatch
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run clear @a
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run gamemode spectator @a[team=!spec]
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run tellraw @a ["",{"text":"Deathmatch winner: ","color":"light_purple"},{"selector":"@a[scores={thDMQual=1..}]","color":"red"},{"text":"!","color":"red"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run title @a times 0 100 10
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run title @a subtitle {"text":"won the round!","bold":true,"color":"dark_aqua"}
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run title @a title {"selector":"@a[scores={thDMQual=1..}]","bold":true,"color":"blue"}
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run scoreboard players set dummy thRoundCD 141
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run scoreboard players add @a[scores={thDMQual=1..}] thisGameScore 5
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run tellraw @a[scores={thDMQual=1..}] ["",{"text":"+5 Score ","color":"green"},{"text":"(Round Win)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run scoreboard players add @a[scores={thDMQual=1..}] thRoundsWon 1
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run scoreboard players set dummy thInDeathmatch 0


# to next round
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundCD matches 1 run execute if score dummy thCurrentRound matches 5.. run scoreboard players set dummy thEndSequence 700
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundCD matches 1 run execute if score dummy thCurrentRound matches ..4 run function crc:targethunters/newround


# end sequence
execute unless score dummy thEndSequence matches ..-101 run scoreboard players remove dummy thEndSequence 1

execute if score dummy thEndSequence matches 690..700 run scoreboard players set dummy thInGame 0

execute if score dummy thEndSequence matches 10.. run team modify player1 suffix ""
execute if score dummy thEndSequence matches 10.. run team modify player2 suffix ""
execute if score dummy thEndSequence matches 10.. run team modify player3 suffix ""
execute if score dummy thEndSequence matches 10.. run team modify player4 suffix ""

execute if score dummy thEndSequence matches 600 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy thEndSequence matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thEndSequence matches 600 run tellraw @a {"text":"Kills Per Player:","bold":true,"color":"red"}
execute if score dummy thEndSequence matches 600 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" - ","color":"gold"},{"score":{"name":"@s","objective":"thTotalKills"},"color":"gold"}]
execute if score dummy thEndSequence matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thEndSequence matches 500 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy thEndSequence matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thEndSequence matches 500 run tellraw @a {"text":"Total Turns Survived as Target:","bold":true,"color":"dark_aqua"}
execute if score dummy thEndSequence matches 500 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"thRoundsSurvived"},"color":"aqua"}]
execute if score dummy thEndSequence matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thEndSequence matches 400 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy thEndSequence matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thEndSequence matches 400 run tellraw @a {"text":"Nether Stars Found:","bold":true,"color":"gold"}
execute if score dummy thEndSequence matches 400 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"yellow"},{"text":" - ","color":"yellow"},{"score":{"name":"@s","objective":"thStarsFound"},"color":"yellow"}]
execute if score dummy thEndSequence matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thEndSequence matches 300 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy thEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thEndSequence matches 300 run tellraw @a {"text":"Rounds Won:","bold":true,"color":"dark_green"}
execute if score dummy thEndSequence matches 300 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" - ","color":"green"},{"score":{"name":"@s","objective":"thRoundsWon"},"color":"green"}]
execute if score dummy thEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thEndSequence matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy thEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thEndSequence matches 200 run tellraw @a {"text":"Scores this game (unmultiplied):","bold":true,"color":"green"}
execute if score dummy thEndSequence matches 200 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"aqua"}]
execute if score dummy thEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy thEndSequence matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy thEndSequence matches 100 run tellraw @a {"text":"Returning to lobby in 5 seconds...","color":"red"}

execute if score dummy thEndSequence matches 1 run function crc:tolobby
