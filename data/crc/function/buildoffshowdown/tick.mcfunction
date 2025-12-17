

#scoreboard vars
scoreboard objectives add bsPlayersLeft dummy
scoreboard objectives add bsLivesLeft dummy
scoreboard objectives add bsOnDeath deathCount
scoreboard objectives add bsStartTimer dummy
scoreboard objectives add bsInGame dummy
scoreboard objectives add bsTimeLeft dummy
scoreboard objectives add bsInOvertime dummy
scoreboard objectives add bsOnKill playerKillCount


#on kill
execute as @a[scores={bsOnKill=1..}] at @s run scoreboard players add @s thisGameScore 4
execute as @a[scores={bsOnKill=1..}] at @s run tellraw @s ["",{"text":"+4 Score ","color":"green"},{"text":"(Kill)","color":"aqua"}]
execute as @a[scores={bsOnKill=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 2
execute as @a[scores={bsOnKill=1..}] at @s run effect give @s instant_health 1 2 true
execute as @a[scores={bsOnKill=1..}] at @s run effect give @s strength 5 1 true
execute as @a[scores={bsOnKill=1..}] at @s run scoreboard players set @s bsOnKill 0


#on death
execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players remove @s bsLivesLeft 1
execute as @a[scores={bsOnDeath=1..}] at @s run execute at @e[type=armor_stand,tag=bsBusSpawn] run tp @s ~ ~-4.5 ~
execute as @a[scores={bsOnDeath=1..}] at @s run execute at @e[type=armor_stand,tag=bsBusSpawn] run effect give @s slow_falling 50 0 true
execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players add @a[team=!spec,distance=0.1..,scores={bsLivesLeft=1..}] thisGameScore 2
execute as @a[scores={bsOnDeath=1..}] at @s run tellraw @s ["",{"text":"+2 Score ","color":"green"},{"text":"(Survival)","color":"aqua"}]
execute as @a[scores={bsOnDeath=1..}] at @s run scoreboard players set @s bsOnDeath 0

#lives check
execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 4 run scoreboard players add @s thisGameScore 5
execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 4 run tellraw @s ["",{"text":"+5 Score ","color":"green"},{"text":"(Placed 4th)","color":"aqua"}]
execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 3 run scoreboard players add @s thisGameScore 8
execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 3 run tellraw @s ["",{"text":"+8 Score ","color":"green"},{"text":"(Placed 3rd)","color":"aqua"}]
execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 2 run scoreboard players add @s thisGameScore 12
execute as @a[scores={bsLivesLeft=0}] at @s run execute if score dummy bsPlayersLeft matches 2 run tellraw @s ["",{"text":"+12 Score ","color":"green"},{"text":"(Placed 2nd)","color":"aqua"}]
execute as @a[scores={bsLivesLeft=0}] at @s run scoreboard players remove dummy bsPlayersLeft 1
execute as @a[scores={bsLivesLeft=0}] at @s run gamemode spectator @s
execute as @a[scores={bsLivesLeft=0}] at @s run scoreboard players set @s bsLivesLeft -1

#start timer
execute unless score dummy bsStartTimer matches ..-101 run scoreboard players remove dummy bsStartTimer 1

execute if score dummy bsStartTimer matches 900 run say game rules fill
execute if score dummy bsStartTimer matches 300 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy bsStartTimer matches 200 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 100 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 80 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 60 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bsStartTimer matches 40 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy bsStartTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bsStartTimer matches 20 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy bsStartTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bsStartTimer matches 0 run tellraw @a {"text":"The game has started!","color":"green"}
execute if score dummy bsStartTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy bsStartTimer matches 0 run scoreboard players set dummy bsInGame 1
execute if score dummy bsStartTimer matches 0 run execute as @e[type=armor_stand,tag=bsBusSpawn] at @s run tp @a[team=!spec] ~ ~-4.5 ~
execute if score dummy bsStartTimer matches 0 run effect give @a[team=!spec] slow_falling 50 0 true

#no slow falling
execute as @a at @s run execute unless block ~ ~-1 ~ air run effect clear @s slow_falling

#game end
execute if score dummy bsPlayersLeft matches 0..1 run scoreboard players add @a[team=!spec,scores={bsLivesLeft=1..}] thisGameScore 20
execute if score dummy bsPlayersLeft matches 0..1 run tellraw @a[team=!spec,scores={bsLivesLeft=1..}] ["",{"text":"+20 Score ","color":"green"},{"text":"(Placed 1st)","color":"aqua"}]








