
#scoreboard vars
scoreboard objectives add oitcOnKill playerKillCount
scoreboard objectives add oitcOnDeath deathCount
scoreboard objectives add oitcDeathSequence dummy
scoreboard objectives add oitcNearPlayerCount dummy
scoreboard objectives add oitcArrowCount dummy
scoreboard objectives add oitcTimeLeft dummy

#saturation
execute if score dummy pgOITCInGame matches 1.. run effect give @a saturation 10 0 true


#arrow check
execute as @a at @s run execute store result score @s oitcArrowCount run clear @s minecraft:arrow 0


#on kill
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run scoreboard players add @s thisGameScore 1
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run tellraw @s ["",{"text":"+1 Score ","color":"green"},{"text":"(Kill)","color":"aqua"}]
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run execute unless score @s oitcArrowCount matches 1.. run give @s arrow 1
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run effect give @s regeneration 5 2 true
scoreboard players set @a oitcOnKill 0

#on death
execute as @a at @s run execute if score @s oitcDeathSequence matches 1.. run scoreboard players remove @s oitcDeathSequence 1

execute as @a[team=!spec,scores={oitcOnDeath=1..}] at @s run scoreboard players set @s oitcDeathSequence 4
scoreboard players set @a oitcOnDeath 0

execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run tp @s @e[type=armor_stand,tag=respawnGen,limit=1,sort=random]
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run clear @s arrow
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run give @s arrow
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run effect give @s regeneration 1000 0 true


#game start
execute if score dummy pgPregameTimer matches 600 run say rules
execute if score dummy pgPregameTimer matches 600 run gamerule keepInventory true
execute if score dummy pgPregameTimer matches 600 run tp @a[team=player1] @e[type=armor_stand,limit=1,tag=respawn1]
execute if score dummy pgPregameTimer matches 600 run tp @a[team=player2] @e[type=armor_stand,limit=1,tag=respawn2]
execute if score dummy pgPregameTimer matches 600 run tp @a[team=player3] @e[type=armor_stand,limit=1,tag=respawn3]
execute if score dummy pgPregameTimer matches 600 run tp @a[team=player4] @e[type=armor_stand,limit=1,tag=respawn4]
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
execute if score dummy pgPregameTimer matches 1 run execute as @a[team=!spec] at @s run give @s copper_sword[custom_name=[{"text":"Weak Sword","italic":false,"color":"gold"}],lore=[[{"text":"stabby stabby","italic":false,"color":"gray"}]],attribute_modifiers=[{type:attack_damage,amount:3,slot:mainhand,operation:add_value,id:"1766191531026"},{type:attack_speed,amount:-2.4,slot:mainhand,operation:add_value,id:"1766191531027"}],unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute if score dummy pgPregameTimer matches 1 run execute as @a[team=!spec] at @s run give @s bow[custom_name=[{"text":"Bow","italic":false,"color":"red"}],lore=[[{"text":"pew pew pew","italic":false,"color":"gray"}]],unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute if score dummy pgPregameTimer matches 1 run execute as @a[team=!spec] at @s run gamerule naturalRegeneration false
execute if score dummy pgPregameTimer matches 1 run effect give @a regeneration 1000 0 true
execute if score dummy pgPregameTimer matches 0 run tellraw @a {"text":"The game has started!","color":"green"}
execute if score dummy pgPregameTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy pgPregameTimer matches 0 run scoreboard players set dummy pgOITCInGame 1
execute if score dummy pgPregameTimer matches 0 run scoreboard players set dummy oitcTimeLeft 6000













