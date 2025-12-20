
#scoreboard vars
scoreboard objectives add trDisappearTimer dummy
scoreboard objectives add trEndSequence dummy
scoreboard objectives add trDisappearInterval dummy
scoreboard objectives add trAlivePlayers dummy
scoreboard objectives add trYLevel dummy
scoreboard objectives add trGracePeriod dummy
scoreboard objectives add trFinalPlacement dummy

#get y level
execute as @a at @s run execute store result score @s test run data get entity @s Pos[1]


#saturation
execute if score dummy pgTNTRunInGame matches 1.. run effect give @a saturation 10 4 true


#start timer
execute if score dummy pgPregameTimer matches 600 run say rules
execute if score dummy pgPregameTimer matches 600 run gamerule doTileDrops true
execute if score dummy pgPregameTimer matches 600 run gamerule naturalRegeneration true
execute if score dummy pgPregameTimer matches 600 run scoreboard players operation dummy trAlivePlayers = dummy totalPlayers
execute if score dummy pgPregameTimer matches 600 run tp @a @e[type=armor_stand,limit=1,tag=trSpawn]
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
execute if score dummy pgPregameTimer matches 1 run scoreboard players set dummy trGracePeriod 53
execute if score dummy pgPregameTimer matches 1 run tp @a @e[type=armor_stand,limit=1,sort=nearest,tag=trGameSpawn]
execute if score dummy pgPregameTimer matches 0 run tellraw @a {"text":"The game has started!","color":"green"}
execute if score dummy pgPregameTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy pgPregameTimer matches 0 run scoreboard players set dummy pgTNTRunInGame 1


#disappear floor
execute if score dummy trGracePeriod matches 0.. run scoreboard players set dummy trGracePeriod 1
execute if score dummy trDisappearInterval matches 4.. run scoreboard players set dummy trDisappearInterval 1
scoreboard players add dummy trDisappearInterval 1

execute if score dummy pgTNTRunInGame matches 1.. run execute unless score dummy trGracePeriod matches 2.. run execute if score dummy trDisappearInterval matches 2 run execute as @a[team=!spec,gamemode=adventure] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:true,Invulnerable:true,PersistenceRequired:true,NoBasePlate:true,NoGravity:true,Small:true,Tags:["disappearBlock"]}
scoreboard players add @e[type=armor_stand,tag=disappearBlock] trDisappearTimer 1

execute as @e[type=armor_stand,tag=disappearBlock] at @s run execute if score @s trDisappearTimer matches 8.. run fill ~ ~-1.2 ~ ~ ~1 ~ air replace tnt
execute as @e[type=armor_stand,tag=disappearBlock] at @s run execute if score @s trDisappearTimer matches 8.. run fill ~ ~-0.2 ~ ~ ~2 ~ air replace sand
execute as @e[type=armor_stand,tag=disappearBlock] at @s run execute if score @s trDisappearTimer matches 8.. run fill ~ ~-0.2 ~ ~ ~2 ~ air replace gravel
execute as @e[type=armor_stand,tag=disappearBlock] at @s run execute if score @s trDisappearTimer matches 8.. run fill ~ ~-0.2 ~ ~ ~2 ~ air replace red_sand
execute as @e[type=armor_stand,tag=disappearBlock] at @s run execute if score @s trDisappearTimer matches 8.. run fill ~ ~-0.2 ~ ~ ~2 ~ air replace light_gray_concrete_powder
execute as @e[type=armor_stand,tag=disappearBlock] at @s run execute if score @s trDisappearTimer matches 8.. run fill ~ ~-0.2 ~ ~ ~2 ~ air replace gray_concrete_powder
execute as @e[type=armor_stand,tag=disappearBlock] at @s run execute if score @s trDisappearTimer matches 9.. run kill @s


#fall off map
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 4 run scoreboard players add @s thisGameScore 4
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 4 run tellraw @s ["",{"text":"+4 Score ","color":"green"},{"text":"(Placed 4th)","color":"aqua"}]
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 4 run scoreboard players set @s trFinalPlacement 4
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 3 run scoreboard players add @s thisGameScore 4
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 3 run tellraw @s ["",{"text":"+8 Score ","color":"green"},{"text":"(Placed 3rd)","color":"aqua"}]
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 3 run scoreboard players set @s trFinalPlacement 3
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 2 run scoreboard players add @s thisGameScore 4
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 2 run tellraw @s ["",{"text":"+12 Score ","color":"green"},{"text":"(Placed 2nd)","color":"aqua"}]
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute if score dummy trAlivePlayers matches 2 run scoreboard players set @s trFinalPlacement 2

execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run scoreboard players remove dummy trAlivePlayers 1
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.22 2
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run tellraw @s ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" fell off the map!","bold":true,"color":"red"}]
execute if score dummy pgTNTRunInGame matches 1.. run execute as @a[team=!spec,gamemode=adventure,scores={trYLevel=..-60}] at @s run gamemode spectator @s


#end game sequence
execute if score dummy trEndSequence matches 0.. run scoreboard players remove dummy trEndSequence 1

execute if score dummy trAlivePlayers matches 1 run scoreboard players add @a[team=!spec,gamemode=adventure] thisGameScore 16
execute if score dummy trAlivePlayers matches 1 run tellraw @a[team=!spec,gamemode=adventure] ["",{"text":"+16 Score ","color":"green"},{"text":"(Placed 1st)","color":"aqua"}]
execute if score dummy trAlivePlayers matches 1 run scoreboard players set @a[team=!spec,gamemode=adventure] trFinalPlacement 1
execute if score dummy trAlivePlayers matches 1 run scoreboard players set dummy trEndSequence 301

execute if score dummy trEndSequence matches 300 run title @a title {"text":"Game Over!","bold":true,"color":"red"}
execute if score dummy trEndSequence matches 300 run title @a times 0 100 10
execute if score dummy trEndSequence matches 300 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
execute if score dummy trEndSequence matches 300 run clear @a
execute if score dummy trEndSequence matches 300 run effect give @a resistance 45 4 true
execute if score dummy trEndSequence matches 300 run effect give @a regeneration 45 4 true

execute if score dummy trEndSequence matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy trEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy trEndSequence matches 200 run tellraw @a {"text":"Placements:","bold":true,"color":"light_purple"}
execute if score dummy trEndSequence matches 200 run tellraw @a ["",{"text":"1st - ","bold":true,"color":"yellow"},{"selector":"@a[scores={trFinalPlacement=1}]","bold":true,"color":"yellow"}]
execute if score dummy trEndSequence matches 200 run execute if score dummy totalPlayers matches 2.. run tellraw @a ["",{"text":"2nd - ","bold":true,"color":"#D7D6D7"},{"selector":"@a[scores={trFinalPlacement=2}]","bold":true,"color":"#D7D6D7"}]
execute if score dummy trEndSequence matches 200 run execute if score dummy totalPlayers matches 3.. run tellraw @a ["",{"text":"3rd - ","bold":true,"color":"#B76E79"},{"selector":"@a[scores={trFinalPlacement=3}]","bold":true,"color":"#B76E79"}]
execute if score dummy trEndSequence matches 200 run execute if score dummy totalPlayers matches 4.. run tellraw @a ["",{"text":"4th - ","bold":true,"color":"gray"},{"selector":"@a[scores={trFinalPlacement=4}]","bold":true,"color":"gray"}]
execute if score dummy trEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy trEndSequence matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy trEndSequence matches 100 run tellraw @a {"text":"Next minigame in 5 seconds...","color":"red"}

execute if score dummy trEndSequence matches 1 run scoreboard players set dummy pgPregameTimer 601
execute if score dummy trEndSequence matches 1 run scoreboard players add dummy partyGameNumber 1
execute if score dummy trEndSequence matches 1 run scoreboard players set dummy trEndSequence -1


