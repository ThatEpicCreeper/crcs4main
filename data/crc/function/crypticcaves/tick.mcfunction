
#scoreboard vars
scoreboard objectives add ccTimeLeft dummy
scoreboard objectives add ccGraceTimer dummy
scoreboard objectives add ccGraceTimerSec dummy
scoreboard objectives add ccInGame dummy
scoreboard objectives add ccStartTimer dummy
scoreboard objectives add ccResource dummy
scoreboard objectives add ccRegenTimer dummy
scoreboard objectives add ccGravelQueue dummy
scoreboard objectives add ccExitSeq dummy
scoreboard objectives add ccExited dummy
scoreboard objectives add ccPlaceSeq dummy
scoreboard objectives add ccPlayersLeft dummy
scoreboard objectives add ccEndSequence dummy
scoreboard objectives add ccRandomRoomVal dummy
scoreboard objectives add ccTotalResource dummy
scoreboard objectives add ccPercentageResource dummy
scoreboard objectives add ccDecimalPercentage dummy
scoreboard objectives add ccHelperPercentage dummy
scoreboard objectives add ccResourceCollected dummy
scoreboard objectives add ccOnDeath deathCount
scoreboard objectives add ccPlaceGravel minecraft.used:minecraft.gravel
scoreboard objectives add ccInCombat minecraft.custom:minecraft.damage_taken
scoreboard objectives add ccBreakCopper minecraft.mined:minecraft.raw_copper_block
scoreboard objectives add ccBreakIron minecraft.mined:minecraft.raw_iron_block
scoreboard objectives add ccBreakGold minecraft.mined:minecraft.raw_gold_block
scoreboard objectives add ccBreakSpawner minecraft.mined:minecraft.spawner
scoreboard objectives add ccBreakGravel minecraft.mined:minecraft.gravel

execute if score dummy ccInGame matches 1.. run effect give @a saturation 5 1 true
execute if score dummy ccInGame matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:gravel"}}]

#display game
team add ccDisplay
team modify ccDisplay color gold
team join ccDisplay C
team modify ccDisplay suffix {"text":"ryptic Caves","color":"gold"}

team add ccDisplayMap
team modify ccDisplayMap color yellow
execute if score dummy ccInGame matches 1.. run team join ccDisplayMap Map:
execute if score dummy ccInGame matches 1.. run team modify ccDisplayMap suffix {"text":" Classic Mines","color":"yellow"}

#display current score text
team join eventScoresDisp Pl
execute if score dummy ccInGame matches 1.. run team modify eventScoresDisp suffix {"text":"ayer Status:","color":"gold"}

execute if score dummy ccInGame matches 1.. run scoreboard players set Pl mainInfo 9

#on death
execute if score dummy ccInGame matches 1.. run execute as @a[team=!spec,gamemode=!spectator] at @s run execute if score @s ccOnDeath matches 1.. run tellraw @s {"text":"You died! 50% of your resources were lost to the Cryptic Caves...","bold":true,"color":"red"}
execute if score dummy ccInGame matches 1.. run execute as @a[team=!spec,gamemode=!spectator] at @s run execute if score @s ccOnDeath matches 1.. run scoreboard players operation @s ccResource /= 2 constant
execute if score dummy ccInGame matches 1.. run execute as @a[team=!spec,gamemode=!spectator] at @s run execute if score @s ccOnDeath matches 1.. run scoreboard players set @s ccOnDeath 0

#in combat
scoreboard players add dummy ccRegenTimer 1
execute if score dummy ccRegenTimer matches 41.. run scoreboard players set dummy ccRegenTimer 1

execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccInCombat matches 1.. run effect clear @s regeneration
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccInCombat matches 1.. run scoreboard players remove @s ccInCombat 1
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score dummy ccRegenTimer matches 11 run execute unless score @s ccInCombat matches 1.. run effect give @s regeneration 5 0 true

#resource
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakCopper matches 1.. run scoreboard players add @s ccResource 1
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakCopper matches 1.. run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.9 1
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakCopper matches 1.. run scoreboard players set @s ccBreakCopper 0

execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakSpawner matches 1.. run scoreboard players add @s ccResource 2
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakSpawner matches 1.. run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.9 1.2
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakSpawner matches 1.. run scoreboard players set @s ccBreakSpawner 0

execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakIron matches 1.. run scoreboard players add @s ccResource 3
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakIron matches 1.. run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.9 1.5
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakIron matches 1.. run scoreboard players set @s ccBreakIron 0

execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakGold matches 1.. run scoreboard players add @s ccResource 5
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakGold matches 1.. run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.9 2
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakGold matches 1.. run scoreboard players set @s ccBreakGold 0

execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakGravel matches 1.. run give @s gravel[custom_name=[{"text":"Gravel","italic":false,"color":"dark_gray"}],lore=[[{"text":"Place in the timer to add 20 seconds!","italic":false,"color":"gray"}]],can_place_on=[{blocks:cyan_wool}],max_stack_size=99,tooltip_display={hidden_components:[can_break,can_place_on,unbreakable]}]
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if score @s ccBreakGravel matches 1.. run scoreboard players set @s ccBreakGravel 0

#display resource
execute as @a at @s run execute if score @s ccPlaceSeq matches 0.. run scoreboard players remove @s ccPlaceSeq 1
execute if score dummy ccInGame matches 1.. run execute as @a[scores={ccPlaceSeq=..0}] at @s run title @s actionbar ["",{"text":"Resources Collected: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ccResource"},"bold":true,"color":"yellow"}]
execute if score dummy ccInGame matches 1.. run execute as @a[scores={ccPlaceSeq=1..}] at @s run execute unless score dummy ccTimeLeft matches 4400.. run title @s actionbar ["",{"text":"Resources Collected: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ccResource"},"bold":true,"color":"yellow"},{"text":" (Gravel was added to Timer)","bold":true,"color":"light_purple"}]
execute if score dummy ccInGame matches 1.. run execute as @a[scores={ccPlaceSeq=1..}] at @s run execute if score dummy ccTimeLeft matches 4400.. run title @s actionbar ["",{"text":"Resources Collected: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ccResource"},"bold":true,"color":"yellow"},{"text":" (The Timer is Full!)","bold":true,"color":"light_purple"}]

execute as @a at @s run execute if score @s ccPlaceGravel matches 1.. run scoreboard players set @s ccPlaceSeq 20
execute as @a at @s run execute if score @s ccPlaceGravel matches 1.. run execute if score dummy ccTimeLeft matches 4400.. run give @s gravel[custom_name=[{"text":"Gravel","italic":false,"color":"dark_gray"}],lore=[[{"text":"Place in the timer to add 20 seconds!","italic":false,"color":"gray"}]],can_place_on=[{blocks:cyan_wool}],max_stack_size=99,tooltip_display={hidden_components:[can_break,can_place_on,unbreakable]}]
execute as @a at @s run execute if score @s ccPlaceGravel matches 1.. run scoreboard players set @s ccPlaceGravel 0

#grace timer
execute if score dummy ccInGame matches 1.. run execute if score dummy ccGraceTimer matches 0.. run scoreboard players remove dummy ccGraceTimer 1
execute if score dummy ccInGame matches 1.. run execute if score dummy ccGraceTimer matches 1.. run execute if score dummy tickTimer matches 10 run scoreboard players remove dummy ccGraceTimerSec 1
execute store result bossbar cryptic:timeleft value run scoreboard players get dummy ccGraceTimer

bossbar set cryptic:timeleft players @a
bossbar set cryptic:timeleft name ["",{"text":"The timer will begin in ","color":"aqua"},{"score":{"name":"dummy","objective":"ccGraceTimerSec"},"color":"gold"},{"text":"s.","color":"gold"}]
bossbar set cryptic:timeleft color blue
execute if score dummy ccInGame matches 1 run execute if score dummy ccGraceTimer matches 1.. run bossbar set cryptic:timeleft visible true
execute unless score dummy ccGraceTimer matches 1.. run bossbar set cryptic:timeleft visible false
bossbar set cryptic:timeleft max 900

#gravel timer
execute if score dummy ccInGame matches 1.. run execute unless score dummy ccGraceTimer matches 1.. run scoreboard players remove dummy ccTimeLeft 1
execute if score dummy ccInGame matches 1.. run execute as @e[type=marker,tag=ccGravelPlacer] at @s run execute if block ~ ~ ~ gravel run execute unless score dummy ccTimeLeft matches 4400.. run scoreboard players add dummy ccTimeLeft 400
execute if score dummy ccInGame matches 1.. run execute as @e[type=marker,tag=ccGravelPlacer] at @s run execute if block ~ ~ ~ gravel run execute unless score dummy ccTimeLeft matches 4400.. run scoreboard players add dummy ccGravelQueue 1
execute if score dummy ccInGame matches 1.. run execute as @e[type=marker,tag=ccGravelPlacer] at @s run execute if block ~ ~ ~ gravel run setblock ~ ~ ~ air

execute if score dummy ccInGame matches 1.. run execute if score dummy ccGravelQueue matches 1.. run execute if score dummy tickTimer matches 11 run execute as @e[type=marker,tag=ccGravelDrop] at @s run setblock ~ ~ ~ gravel
execute if score dummy ccInGame matches 1.. run execute if score dummy ccGravelQueue matches 1.. run execute if score dummy tickTimer matches 11 run scoreboard players remove dummy ccGravelQueue 1

execute if score dummy ccTimeLeft matches 4400 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 4400 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 2
execute if score dummy ccTimeLeft matches 4380 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~11 ~ gravel
execute if score dummy ccTimeLeft matches 4380 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~12 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 4000 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 4000 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1.9
execute if score dummy ccTimeLeft matches 3980 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~10 ~ gravel
execute if score dummy ccTimeLeft matches 3980 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~11 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 3600 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 3600 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1.8
execute if score dummy ccTimeLeft matches 3580 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~9 ~ gravel
execute if score dummy ccTimeLeft matches 3580 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~10 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 3200 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 3200 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1.6
execute if score dummy ccTimeLeft matches 3180 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~8 ~ gravel
execute if score dummy ccTimeLeft matches 3180 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~9 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 2800 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 2800 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1.4
execute if score dummy ccTimeLeft matches 2780 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~7 ~ gravel
execute if score dummy ccTimeLeft matches 2780 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~8 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 2400 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 2400 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1.2
execute if score dummy ccTimeLeft matches 2380 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~6 ~ gravel
execute if score dummy ccTimeLeft matches 2380 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~7 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 2000 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 2000 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 1980 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~5 ~ gravel
execute if score dummy ccTimeLeft matches 1980 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~6 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 1600 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 1600 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 0.9
execute if score dummy ccTimeLeft matches 1580 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~4 ~ gravel
execute if score dummy ccTimeLeft matches 1580 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~5 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 1200 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 1200 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 0.7
execute if score dummy ccTimeLeft matches 1180 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~3 ~ gravel
execute if score dummy ccTimeLeft matches 1180 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~4 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 800 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 800 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 0.6
execute if score dummy ccTimeLeft matches 780 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~2 ~ gravel
execute if score dummy ccTimeLeft matches 780 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~3 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 400 run execute as @e[type=marker,tag=ccGravelTimer] at @s run setblock ~ ~ ~ air
execute if score dummy ccTimeLeft matches 400 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 0.5
execute if score dummy ccTimeLeft matches 380 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~1 ~ gravel
execute if score dummy ccTimeLeft matches 380 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~2 ~ ~ ~12 ~ air

execute if score dummy ccTimeLeft matches 200 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 180 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 160 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 140 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 120 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 100 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 80 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 60 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 40 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1
execute if score dummy ccTimeLeft matches 20 run execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.6 1

#exit
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if entity @e[type=minecraft:marker,tag=ccExit,distance=..1.5] run scoreboard players set @s ccExited 1
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if entity @e[type=minecraft:marker,tag=ccExit,distance=..1.5] run tellraw @s ["",{"text":"You left the dungeon with","color":"gold"},{"text":" ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ccResource"},"bold":true,"color":"yellow"},{"text":" Resources!","bold":true,"color":"yellow"}]
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if entity @e[type=minecraft:marker,tag=ccExit,distance=..1.5] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if entity @e[type=minecraft:marker,tag=ccExit,distance=..1.5] run scoreboard players remove dummy ccPlayersLeft 1
execute if score dummy ccInGame matches 1.. run execute as @a[gamemode=!spectator] at @s run execute if entity @e[type=minecraft:marker,tag=ccExit,distance=..1.5] run gamemode spectator @s

#end game
execute if score dummy ccInGame matches 1.. run execute if score dummy ccPlayersLeft matches ..0 run scoreboard players set dummy ccEndSequence 501
execute if score dummy ccInGame matches 1.. run execute if score dummy ccPlayersLeft matches ..0 run scoreboard players set dummy ccInGame 0
execute if score dummy ccInGame matches 1.. run execute if score dummy ccTimeLeft matches ..0 run scoreboard players set dummy ccEndSequence 501
execute if score dummy ccInGame matches 1.. run execute if score dummy ccTimeLeft matches ..0 run scoreboard players set dummy ccInGame 0

#start timer
execute unless score dummy ccStartTimer matches ..-101 run scoreboard players remove dummy ccStartTimer 1

execute if score dummy ccStartTimer matches 900 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy ccStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccStartTimer matches 900 run tellraw @a ["",{"text":"Welcome to Cryptic Caves!","bold":true,"color":"gray"},{"text":"\n\n"},{"text":"- In this game, the objective is to collect as many resources as possible, and escape the dungeon!","color":"green"}]
execute if score dummy ccStartTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccStartTimer matches 800 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy ccStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccStartTimer matches 800 run tellraw @a {"text":"- Use your items to fight your way through monsters in the randomly generated dungeon...\n\n- Grab your pickaxe and break the valuable ores, and those pesky spawners!","color":"green"}
execute if score dummy ccStartTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccStartTimer matches 700 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy ccStartTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccStartTimer matches 700 run tellraw @a ["",{"text":"- Try your best not to die!\n\n- The ","color":"green"},{"text":"Cryptic Caves","color":"gray"},{"text":" will remove resources for those it deems unworthy...","color":"green"},{"text":"\n"},{"text":"(50% of resources are lost on death)","color":"red"}]
execute if score dummy ccStartTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccStartTimer matches 630 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy ccStartTimer matches 630 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccStartTimer matches 630 run tellraw @a ["",{"text":"- Your time in the ","color":"green"},{"text":"Cryptic Caves ","color":"gray"},{"text":"is limited!\n\n- This is denoted by a gravel timer in the center.\n\n- If it runs out, all players who have not exited the dungeon will incur a significant penalty!","color":"green"},{"text":"\n"},{"text":"(-75% of resources)","color":"red"},{"text":"\n\n"},{"text":"- Gravel can be found around the map to be placed in the timer (or not...), each one adds 20 seconds, up to 4 minutes!","color":"green"}]
execute if score dummy ccStartTimer matches 630 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccStartTimer matches 400 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy ccStartTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccStartTimer matches 400 run tellraw @a ["",{"text":"Scoring for this game (unmultiplied):","bold":true,"color":"green"},{"text":"\n\n"},{"text":"- Mining Copper = +1 Resource","color":"red"},{"text":"\n"},{"text":"- Mining Iron = +3 Resource","color":"gray"},{"text":"\n"},{"text":"- Mining Gold = +5 Resource","color":"yellow"},{"text":"\n"},{"text":"- Mining a Spawner = +2 Resource","color":"dark_gray"},{"text":"\n\n"},{"text":"- 110 points are awarded in total.\n- At the end, players will earn a percentage of this total as points, based on one\'s resources collected, versus the total number of resources collected among all players.","color":"aqua"}]
execute if score dummy ccStartTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccStartTimer matches 340 run tellraw @a {"text":"Standby as the dungeon generates...","color":"red"}
execute if score dummy ccStartTimer matches 339 run execute as @e[type=marker,tag=ccRoomSpawn] at @s run fill ~ ~ ~ ~20 ~20 ~20 air
execute if score dummy ccStartTimer matches 335 run function crc:crypticcaves/randomrooms

execute if score dummy ccStartTimer matches 330 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy ccStartTimer matches 330 run tellraw @a {"text":"The game will begin shortly...","color":"red"}

execute if score dummy ccStartTimer matches 300 run execute as @a[team=!spec] at @s run function crc:crypticcaves/items

execute if score dummy ccStartTimer matches 300 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy ccStartTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy ccStartTimer matches 200 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy ccStartTimer matches 124 run execute as @a at @s run function cryptcavesost:play
execute if score dummy ccStartTimer matches 100 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy ccStartTimer matches 80 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy ccStartTimer matches 60 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy ccStartTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy ccStartTimer matches 40 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy ccStartTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy ccStartTimer matches 20 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy ccStartTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy ccStartTimer matches 0 run tellraw @a {"text":"The game has started!","color":"green"}
execute if score dummy ccStartTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy ccStartTimer matches 0 run scoreboard players set dummy ccInGame 1
execute if score dummy ccStartTimer matches 0 run scoreboard players set dummy tickTimer 11
execute if score dummy ccStartTimer matches 0 run execute as @e[type=marker,tag=ccSpawnPlatform] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air
execute if score dummy ccStartTimer matches 0 run execute as @e[type=marker,tag=ccGravelTimer] at @s run fill ~ ~ ~ ~ ~12 ~ gravel

#end seq
execute unless score dummy ccEndSequence matches ..-5 run scoreboard players remove dummy ccEndSequence 1
execute if score dummy ccEndSequence matches 501 run scoreboard players set dummy ccInGame 0

execute if score dummy ccEndSequence matches 500 run title @a title {"text":"The Game has Ended!","bold":true,"color":"green"}
execute if score dummy ccEndSequence matches 500 run execute as @a at @s run function cryptcavesost:stop
execute if score dummy ccEndSequence matches 500 run title @a times 0 100 10
execute if score dummy ccEndSequence matches 500 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
execute if score dummy ccEndSequence matches 500 run gamemode spectator @a
execute if score dummy ccEndSequence matches 500 run execute as @a[scores={ccExited=0},team=!spec] at @s run scoreboard players operation @s ccResource /= 4 constant
execute if score dummy ccEndSequence matches 500 run tellraw @a[scores={ccExited=0},team=!spec] ["",{"text":"You were locked in the dungeon and lost 75% of your resources!","bold":true,"color":"red"},{"text":"\n","bold":true},{"text":"Don\'t be so greedy next time...","bold":true,"color":"dark_red"}]

execute if score dummy ccEndSequence matches 499 run execute as @a[team=player1] at @s run scoreboard players operation dummy ccTotalResource += @s ccResource
execute if score dummy ccEndSequence matches 499 run execute as @a[team=player2] at @s run scoreboard players operation dummy ccTotalResource += @s ccResource
execute if score dummy ccEndSequence matches 499 run execute as @a[team=player3] at @s run scoreboard players operation dummy ccTotalResource += @s ccResource
execute if score dummy ccEndSequence matches 499 run execute as @a[team=player4] at @s run scoreboard players operation dummy ccTotalResource += @s ccResource

execute if score dummy ccEndSequence matches 499 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccResourceCollected = @s ccResource

execute if score dummy ccEndSequence matches 499 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccDecimalPercentage = @s ccResource

execute if score dummy ccEndSequence matches 498 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccResource *= 110 constant
execute if score dummy ccEndSequence matches 497 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccResource /= dummy ccTotalResource
execute if score dummy ccEndSequence matches 496 run execute as @a[team=!spec] at @s run scoreboard players operation @s thisGameScore = @s ccResource


execute if score dummy ccEndSequence matches 497 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccDecimalPercentage *= 100 constant
execute if score dummy ccEndSequence matches 496 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccPercentageResource = @s ccDecimalPercentage
execute if score dummy ccEndSequence matches 496 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccPercentageResource /= dummy ccTotalResource
execute if score dummy ccEndSequence matches 496 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccDecimalPercentage /= dummy ccTotalResource
execute if score dummy ccEndSequence matches 496 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccDecimalPercentage *= 100 constant
execute if score dummy ccEndSequence matches 496 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccHelperPercentage = @s ccPercentageResource
execute if score dummy ccEndSequence matches 495 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccHelperPercentage *= 100 constant
execute if score dummy ccEndSequence matches 495 run execute as @a[team=!spec] at @s run scoreboard players operation @s ccDecimalPercentage -= @s ccHelperPercentage

execute if score dummy ccEndSequence matches 494 run execute as @a[team=!spec] at @s run tellraw @s ["",{"text":"+","color":"green"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"green"},{"text":" Score","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"ccPercentageResource"},"color":"aqua"},{"text":"% of total resources)","color":"aqua"}]
#execute if score dummy ccEndSequence matches 494 run execute as @a[team=!spec] at @s run tellraw @s ["",{"text":"+","color":"green"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"green"},{"text":" Score","color":"green"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"ccPercentageResource"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"ccDecimalPercentage"},"color":"aqua"},{"text":"% of total resources)","color":"aqua"}]

execute if score dummy ccEndSequence matches 400 run team modify player1 suffix ""
execute if score dummy ccEndSequence matches 400 run team modify player2 suffix ""
execute if score dummy ccEndSequence matches 400 run team modify player3 suffix ""
execute if score dummy ccEndSequence matches 400 run team modify player4 suffix ""

execute if score dummy ccEndSequence matches 300 run team modify player1 suffix ""
execute if score dummy ccEndSequence matches 300 run team modify player2 suffix ""
execute if score dummy ccEndSequence matches 300 run team modify player3 suffix ""
execute if score dummy ccEndSequence matches 300 run team modify player4 suffix ""

execute if score dummy ccEndSequence matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccEndSequence matches 400 run tellraw @a {"text":"Escaped Players:","bold":true,"color":"aqua"}
execute if score dummy ccEndSequence matches 400 run execute as @a[team=!spec,scores={ccExited=1}] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" - ","bold":true,"color":"light_purple"},{"text":"Exited Dungeon","bold":true,"color":"green"}]
execute if score dummy ccEndSequence matches 400 run execute as @a[team=!spec,scores={ccExited=0}] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" - ","bold":true,"color":"light_purple"},{"text":"Didn\'t exit Dungeon","bold":true,"color":"red"}]
execute if score dummy ccEndSequence matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccEndSequence matches 300 run tellraw @a {"text":"Resources Collected:","bold":true,"color":"gold"}
execute if score dummy ccEndSequence matches 300 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"yellow"},{"text":" - ","color":"yellow"},{"score":{"name":"@s","objective":"ccResourceCollected"},"color":"yellow"}]
execute if score dummy ccEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccEndSequence matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy ccEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy ccEndSequence matches 200 run tellraw @a {"text":"Scores this game (unmultiplied):","bold":true,"color":"green"}
execute if score dummy ccEndSequence matches 200 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"aqua"}]
execute if score dummy ccEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy ccEndSequence matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy ccEndSequence matches 100 run tellraw @a {"text":"Returning to lobby in 5 seconds...","color":"red"}

execute if score dummy ccEndSequence matches 1 run function crc:tolobby