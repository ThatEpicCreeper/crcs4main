
#add multipled score
execute if score dummy gameNumber matches 2 run execute as @a[team=!spec] run scoreboard players operation @s thisGameScore *= 3 constant
execute if score dummy gameNumber matches 2 run execute as @a[team=!spec] run scoreboard players operation @s thisGameScore /= 2 constant

execute if score dummy gameNumber matches 3 run execute as @a[team=!spec] run scoreboard players operation @s thisGameScore *= 2 constant

execute if score dummy gameNumber matches 4 run execute as @a[team=!spec] run scoreboard players operation @s thisGameScore *= 5 constant
execute if score dummy gameNumber matches 4 run execute as @a[team=!spec] run scoreboard players operation @s thisGameScore /= 2 constant


execute as @a[team=!spec] run scoreboard players operation @s personalScore += @s thisGameScore



tp @a 0 50 0 0 0
spawnpoint @a 0 50 0



scoreboard players set @a thisGameScore 0
scoreboard players set dummy inLobby 1
scoreboard players set dummy inVoting 0
scoreboard players set dummy inGame 0
scoreboard players add dummy gameNumber 1
scoreboard players set dummy pgInGame 0
gamemode adventure @a[team=!spec]
tag @a remove hrFinished
tag @a remove hrDNF

clear @a
effect clear @a

scoreboard players reset H mainInfo
scoreboard players reset B mainInfo
scoreboard players reset Map: mainInfo
scoreboard players reset Map mainInfo
scoreboard players reset Cu mainInfo
scoreboard players reset Pa mainInfo
scoreboard players reset Round: mainInfo
scoreboard players reset Ch mainInfo

gamerule fallDamage false
gamerule keepInventory true
gamerule doTileDrops false
gamerule naturalRegeneration true
gamerule doMobLoot true
gamerule mobGriefing false
worldborder set 999999
scoreboard objectives setdisplay below_name

#st reset
execute as @a at @s run function hybridracersost:stop

