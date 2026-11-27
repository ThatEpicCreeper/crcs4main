#scoreboard vars
scoreboard objectives add thCurrentRound dummy
scoreboard objectives add thOnDeath dummy
scoreboard objectives add thOnKill dummy
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
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 5 run team modify thDisplayRound suffix {"text":" 5/5 (Subway Station)","color":"yellow"}

## =

# on death
execute as @a at @s run execute if score @s thDeathSequence matches 1.. run scoreboard players remove @s thDeathSequence 1

execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 1 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn1]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 2 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn2]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 3 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn3]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 4 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn4]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thDeathSequence=1..}] at @s run execute if score dummy thCurrentRound matches 5 run tp @s @e[type=marker,limit=1,sort=random,tag=thMapSpawn5]

execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.8 2
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
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a subtitle {"text":"won the round!","bold":true,"color":"aqua"}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a title {"selector":"@a[scores={thDMQual=1..}]","bold":true,"color":"blue"}
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players add @a[scores={thDMQual=1..}] thisGameScore 5
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run tellraw @a[scores={thDMQual=1..}] ["",{"text":"+5 Score ","color":"green"},{"text":"(Round Win)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run execute unless score dummy thInDeathmatch matches 1.. run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players set dummy thRoundCD 141

execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnDeath=1..}] at @s run tag @a remove thTarget
execute as @a[scores={thOnDeath=1..}] at @s run scoreboard players set @s thOnDeath 0

# on kill
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run execute if score dummy thRoundTimeLeft matches 1.. run scoreboard players add @s thisGameScore 1
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run execute if score dummy thRoundTimeLeft matches 1.. run tellraw @s ["",{"text":"+1 Score ","color":"green"},{"text":"(Target Kill Bonus)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run scoreboard players add @s thisGameScore 1
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run tellraw @s ["",{"text":"+1 Score ","color":"green"},{"text":"(Kill)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run effect give @s instant_health 1 4 true
execute if score dummy thInGame matches 1.. run execute as @a[scores={thOnKill=1..}] at @s run effect give @s saturation 1 4 true
execute as @a[scores={thOnKill=1..}] at @s run scoreboard players set @s thOnKill 0

# show target
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1.. run title @a actionbar ["",{"text":"Target: ","bold":true,"color":"gold"},{"selector":"@a[tag=thTarget]","color":"yellow"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run title @a actionbar ["",{"text":"","bold":true,"color":"gold"}]

# hunter kb resist and effects
execute if score dummy thInGame matches 1.. run execute as @a[tag=!thTarget] at @s run attribute @s minecraft:knockback_resistance modifier add th_kb_resist 100 add_value
execute if score dummy thInGame matches 1.. run execute as @a[tag=!thTarget] at @s run effect give @s minecraft:resistance 1 4 true
execute if score dummy thInGame matches 1.. run execute as @a[tag=thTarget] at @s run attribute @s minecraft:knockback_resistance modifier remove th_kb_resist
execute if score dummy thInGame matches 1.. run execute as @a[tag=thTarget] at @s run effect give @s minecraft:weakness 1 4 true
execute if score dummy thInGame matches 1.. run effect give @a night_vision 30 1 true

# survive round
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run tellraw @a {"text":"The target has survived the round!","color":"aqua"}
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches ..3 run scoreboard players set dummy thTurnCD 141
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run clear @a
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run effect clear @a
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run scoreboard players add @a[tag=thTarget] thisGameScore 4
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run tellraw @a[tag=thTarget] ["",{"text":"+4 Score ","color":"green"},{"text":"(Survived The Hunt)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute if score dummy thPlayersLeft matches 2.. run function crc:targethunters/startdeathmatch

execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.7 1
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run clear @a
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run gamemode spectator @a[team=!spec]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run tellraw @a ["",{"text":"Round winner: ","color":"light_purple"},{"selector":"@a[scores={thDMQual=1..}]","color":"red"},{"text":"!","color":"red"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a times 0 100 10
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a subtitle {"text":"won the round!","bold":true,"color":"aqua"}
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run title @a title {"selector":"@a[scores={thDMQual=1..}]","bold":true,"color":"blue"}
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run scoreboard players add @a[scores={thDMQual=1..}] thisGameScore 5
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundTimeLeft matches 1 run execute if score dummy thCurrentTurn matches 4.. run execute unless score dummy thPlayersLeft matches 2.. run tellraw @a[scores={thDMQual=1..}] ["",{"text":"+5 Score ","color":"green"},{"text":"(Round Win)","color":"aqua"}]
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

#start timer
execute unless score dummy thStartTimer matches ..-101 run scoreboard players remove dummy thStartTimer 1

execute if score dummy thStartTimer matches 900 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy thStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy thStartTimer matches 900 run tellraw @a ["",{"text":"Welcome to Target Hunters!","bold":true,"color":"aqua"},{"text":"\n\n"},{"text":"In this game, the target must survive the hunt, while the hunters eliminate them!","color":"green"}]
execute if score dummy thStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

# execute if score dummy thStartTimer matches 800 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
# execute if score dummy thStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
# execute if score dummy thStartTimer matches 800 run tellraw @a ["",{"text":"Cross each checkpoint and the finish line the required number of times to finish!\n\nYou will obtain an item after crossing a checkpoint.","color":"green"},{"text":"\n "}]
# execute if score dummy thStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}



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
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run title @a subtitle {"text":"won the round!","bold":true,"color":"aqua"}
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run title @a title {"selector":"@a[scores={thDMQual=1..}]","bold":true,"color":"blue"}
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run scoreboard players set dummy thRoundCD 141
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run scoreboard players add @a[scores={thDMQual=1..}] thisGameScore 5
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run tellraw @a[scores={thDMQual=1..}] ["",{"text":"+5 Score ","color":"green"},{"text":"(Round Win)","color":"aqua"}]
execute if score dummy thInGame matches 1.. run execute if score dummy thInDeathmatch matches 1.. run execute if score dummy thPlayersLeft matches ..1 run scoreboard players set dummy thInDeathmatch 0


# to next round
execute if score dummy thInGame matches 1.. run execute if score dummy thRoundCD matches 1 run execute if score dummy thCurrentRound matches ..4 run function crc:targethunters/newround

