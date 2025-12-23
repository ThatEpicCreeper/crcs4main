
#scoreboard vars
scoreboard objectives add lrEndSequence dummy
scoreboard objectives add lrLavaTimer dummy
scoreboard objectives add lrAlivePlayers dummy
scoreboard objectives add lrOnDeath deathCount
scoreboard objectives add lrRiseTimer dummy
scoreboard objectives add lrDeathSequence dummy
scoreboard objectives add lrInRoom dummy
scoreboard objectives add lrCompletedRooms dummy

#remove score
execute if score dummy lrLavaTimer matches -1.. run scoreboard players remove dummy lrLavaTimer 1
execute as @e[type=marker] at @s run execute if score @s lrRiseTimer matches -1.. run scoreboard players remove @s lrRiseTimer 1

#saturation
execute if score dummy pgLavaRunInGame matches 1.. run effect give @a saturation 10 4 true

#on death
execute as @a[team=!spec] at @s run execute if score @s lrOnDeath matches 1.. run scoreboard players remove dummy lrAlivePlayers 1
execute as @a at @s run execute if score @s lrOnDeath matches 1.. run gamemode spectator @s
execute as @a at @s run execute if score @s lrOnDeath matches 1.. run tp @s @r[team=!spec]
scoreboard players set @a lrOnDeath 0

effect give @a weakness 2 4 true


#start timer
execute if score dummy pgPregameTimer matches 600 run say rules
execute if score dummy pgPregameTimer matches 600 run gamerule doTileDrops false
execute if score dummy pgPregameTimer matches 600 run gamerule naturalRegeneration false
execute if score dummy pgPregameTimer matches 600 run scoreboard players operation dummy lrAlivePlayers = dummy totalPlayers
execute if score dummy pgPregameTimer matches 600 run tp @a @e[type=armor_stand,limit=1,tag=lrSpawn]
execute if score dummy pgPregameTimer matches 600 run gamemode adventure @a[team=!spec]
execute if score dummy pgPregameTimer matches 300 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy pgPregameTimer matches 200 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 100 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 80 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 60 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy pgPregameTimer matches 40 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy pgPregameTimer matches 20 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy pgPregameTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy pgPregameTimer matches 1 run tp @a @e[type=armor_stand,limit=1,sort=nearest,tag=lrGameSpawn]
execute if score dummy pgPregameTimer matches 1 run scoreboard players set dummy lrLavaTimer 4100
execute if score dummy pgPregameTimer matches 0 run tellraw @a {"text":"The game has started!","color":"green"}
execute if score dummy pgPregameTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy pgPregameTimer matches 0 run scoreboard players set dummy pgLavaRunInGame 1

#lava rise
execute as @e[type=marker,scores={lrRiseTimer=280}] at @s run fill ~8 ~ ~8 ~-8 ~ ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=250}] at @s run fill ~8 ~1 ~8 ~-8 ~1 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=220}] at @s run fill ~8 ~2 ~8 ~-8 ~2 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=190}] at @s run fill ~8 ~3 ~8 ~-8 ~3 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=160}] at @s run fill ~8 ~4 ~8 ~-8 ~4 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=130}] at @s run fill ~8 ~5 ~8 ~-8 ~5 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=100}] at @s run fill ~8 ~6 ~8 ~-8 ~6 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=70}] at @s run fill ~8 ~7 ~8 ~-8 ~7 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=40}] at @s run fill ~8 ~8 ~8 ~-8 ~8 ~-8 lava replace air
execute as @e[type=marker,scores={lrRiseTimer=10}] at @s run fill ~8 ~9 ~8 ~-8 ~9 ~-8 lava replace air

#lava rise timer
execute if score dummy lrLavaTimer matches 3630 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 3620 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 3610 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 3600 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 3600 run tellraw @a {"text":"Room #1 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 3600 run scoreboard players set @e[type=marker,tag=room1] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 3230 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 3220 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 3210 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 3200 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 3200 run tellraw @a {"text":"Room #2 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 3200 run scoreboard players set @e[type=marker,tag=room2] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 2830 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2820 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2810 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2800 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 2800 run tellraw @a {"text":"Room #3 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 2800 run scoreboard players set @e[type=marker,tag=room3] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 2430 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2420 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2410 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2400 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 2400 run tellraw @a {"text":"Room #4 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 2400 run scoreboard players set @e[type=marker,tag=room4] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 2030 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2020 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2010 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 2000 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 2000 run tellraw @a {"text":"Room #5 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 2000 run scoreboard players set @e[type=marker,tag=room5] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 1630 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 1620 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 1610 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 1600 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 1600 run tellraw @a {"text":"Room #6 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 1600 run scoreboard players set @e[type=marker,tag=room6] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 1230 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 1220 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 1210 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 1200 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 1200 run tellraw @a {"text":"Room #7 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 1200 run scoreboard players set @e[type=marker,tag=room7] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 830 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 820 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 810 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 800 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 800 run tellraw @a {"text":"Room #8 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 800 run scoreboard players set @e[type=marker,tag=room8] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 430 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 420 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 410 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 400 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 400 run tellraw @a {"text":"Room #9 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 400 run scoreboard players set @e[type=marker,tag=room9] lrRiseTimer 300

execute if score dummy lrLavaTimer matches 30 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 10 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if score dummy lrLavaTimer matches 1 run execute as @a at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 0.3 0.6
execute if score dummy lrLavaTimer matches 1 run tellraw @a {"text":"Room #10 is beginning to flood!","color":"red"}
execute if score dummy lrLavaTimer matches 1 run scoreboard players set @e[type=marker,tag=room10] lrRiseTimer 300


#score give
execute as @a[team=!spec,scores={lrInRoom=1},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit1,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=1},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit1,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=1},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit1,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=1},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit1,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=1},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit1,distance=..0.6] run scoreboard players set @s lrInRoom 2

execute as @a[team=!spec,scores={lrInRoom=2},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit2,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=2},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit2,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=2},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit2,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=2},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit2,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=2},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit2,distance=..0.6] run scoreboard players set @s lrInRoom 3

execute as @a[team=!spec,scores={lrInRoom=3},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit3,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=3},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit3,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=3},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit3,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=3},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit3,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=3},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit3,distance=..0.6] run scoreboard players set @s lrInRoom 4

execute as @a[team=!spec,scores={lrInRoom=4},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit4,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=4},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit4,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=4},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit4,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=4},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit4,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=4},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit4,distance=..0.6] run scoreboard players set @s lrInRoom 5

execute as @a[team=!spec,scores={lrInRoom=5},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit5,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=5},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit5,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=5},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit5,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=5},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit5,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=5},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit5,distance=..0.6] run scoreboard players set @s lrInRoom 6

execute as @a[team=!spec,scores={lrInRoom=6},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit6,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=6},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit6,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=6},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit6,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=6},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit6,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=6},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit6,distance=..0.6] run scoreboard players set @s lrInRoom 7

execute as @a[team=!spec,scores={lrInRoom=7},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit7,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=7},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit7,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=7},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit7,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=7},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit7,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=7},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit7,distance=..0.6] run scoreboard players set @s lrInRoom 8

execute as @a[team=!spec,scores={lrInRoom=8},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit8,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=8},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit8,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=8},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit8,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=8},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit8,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=8},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit8,distance=..0.6] run scoreboard players set @s lrInRoom 9

execute as @a[team=!spec,scores={lrInRoom=9},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit9,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=9},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit9,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=9},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit9,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=9},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit9,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=9},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit9,distance=..0.6] run scoreboard players set @s lrInRoom 10

execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run scoreboard players add @s thisGameScore 2
execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Completed a Room)","color":"aqua"}]
execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run tellraw @a ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" escaped the flooding rooms!","bold":true,"color":"gold"}]
execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run scoreboard players add @s lrCompletedRooms 1
execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run scoreboard players remove @s lrAlivePlayers 1
execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run gamemode spectator @s
execute as @a[team=!spec,scores={lrInRoom=10},gamemode=adventure] at @s run execute if entity @e[type=marker,tag=exit10,distance=..0.6] run scoreboard players set @s lrInRoom 11

#end game sequence
execute if score dummy lrEndSequence matches 0.. run scoreboard players remove dummy lrEndSequence 1

execute if score dummy pgLavaRunInGame matches 1.. run execute if score dummy lrAlivePlayers matches ..0 run scoreboard players set dummy lrEndSequence 401
execute if score dummy pgLavaRunInGame matches 1.. run execute if score dummy lrAlivePlayers matches ..0 run scoreboard players set dummy pgLavaRunInGame 0

execute if score dummy lrEndSequence matches 400 run scoreboard players set dummy lrLavaTimer -10
execute if score dummy lrEndSequence matches 400 run title @a title {"text":"Game Over!","bold":true,"color":"red"}
execute if score dummy lrEndSequence matches 400 run title @a times 0 100 10
execute if score dummy lrEndSequence matches 400 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
execute if score dummy lrEndSequence matches 400 run clear @a
execute if score dummy lrEndSequence matches 400 run effect give @a resistance 45 4 true
execute if score dummy lrEndSequence matches 400 run effect give @a regeneration 45 4 true

execute if score dummy lrEndSequence matches 400 run team modify player1 suffix ""
execute if score dummy lrEndSequence matches 400 run team modify player2 suffix ""
execute if score dummy lrEndSequence matches 400 run team modify player3 suffix ""
execute if score dummy lrEndSequence matches 400 run team modify player4 suffix ""

execute if score dummy lrEndSequence matches 300 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy lrEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy lrEndSequence matches 300 run tellraw @a {"text":"Rooms Completed:","bold":true,"color":"light_purple"}
execute if score dummy lrEndSequence matches 300 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"lrCompletedRooms"},"bold":true,"color":"aqua"}]
execute if score dummy lrEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy lrEndSequence matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy lrEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy lrEndSequence matches 200 run tellraw @a {"text":"Scores this game (unmultiplied):","bold":true,"color":"green"}
execute if score dummy lrEndSequence matches 200 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"aqua"}]
execute if score dummy lrEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy lrEndSequence matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy lrEndSequence matches 100 run tellraw @a {"text":"Returning to Lobby in 5 seconds...","color":"red"}

#execute if score dummy lrEndSequence matches 1 run scoreboard players set dummy pgPregameTimer 601
execute if score dummy lrEndSequence matches 1 run function crc:tolobby
execute if score dummy lrEndSequence matches 1 run scoreboard players add dummy partyGameNumber 1
execute if score dummy lrEndSequence matches 1 run scoreboard players set dummy lrEndSequence -1







