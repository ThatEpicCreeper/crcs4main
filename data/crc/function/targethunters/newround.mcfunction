scoreboard players set dummy thTurnCD 541
scoreboard players operation dummy thCurrentRound += 1 constant
scoreboard players set dummy thCurrentTurn 0
scoreboard players set dummy thInRound 1
scoreboard players set dummy thPlayersLeft 4
scoreboard players set @a[team=!spec] thDMQual 1

gamemode adventure @a[team=!spec]

# tp to map
execute if score dummy thCurrentRound matches 1 run tp @a @e[type=marker,limit=1,sort=random,tag=thMapSpawn1]
execute if score dummy thCurrentRound matches 2 run tp @a @e[type=marker,limit=1,sort=random,tag=thMapSpawn2]
execute if score dummy thCurrentRound matches 3 run tp @a @e[type=marker,limit=1,sort=random,tag=thMapSpawn3]
execute if score dummy thCurrentRound matches 4 run tp @a @e[type=marker,limit=1,sort=random,tag=thMapSpawn4]
execute if score dummy thCurrentRound matches 5 run tp @a @e[type=marker,limit=1,sort=random,tag=thMapSpawn5]

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1

effect give @a[team=!spec] minecraft:speed 20 2 true
effect give @a[team=!spec] minecraft:saturation 20 2 true
effect give @a[team=!spec] minecraft:regeneration 20 4 true
effect give @a[team=!spec] minecraft:resistance 20 4 true
effect give @a[team=!spec] minecraft:fire_resistance 20 2 true
effect give @a[team=!spec] minecraft:invisibility 28 2 true

# title msg
title @a times 0 100 10
title @a title {"text":"20s Preparation Time...","bold":true,"color":"dark_red"}
title @a subtitle {"text":"Spread out on the map!","bold":true,"color":"red"}

# decide order
scoreboard players set @a thTurnOrder -1
scoreboard players set @r[team=!spec,gamemode=!spectator,scores={thTurnOrder=..0}] thTurnOrder 1
scoreboard players set @r[team=!spec,gamemode=!spectator,scores={thTurnOrder=..0}] thTurnOrder 2
scoreboard players set @r[team=!spec,gamemode=!spectator,scores={thTurnOrder=..0}] thTurnOrder 3
scoreboard players set @r[team=!spec,gamemode=!spectator,scores={thTurnOrder=..0}] thTurnOrder 4
