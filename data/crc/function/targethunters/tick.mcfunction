#scoreboard vars
scoreboard objectives add thCurrentRound dummy
scoreboard objectives add thOnDeath dummy
scoreboard objectives add thOnKill dummy
scoreboard objectives add thInGame dummy
scoreboard objectives add thInRound dummy
scoreboard objectives add thStartTimer dummy
scoreboard objectives add thIntermission dummy
scoreboard objectives add thTurnCD dummy
scoreboard objectives add thRoundTimeLeft dummy
scoreboard objectives add thDMQual dummy
scoreboard objectives add thPlayersLeft dummy


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
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 3 run team modify thDisplayRound suffix {"text":" 3/5 (Hypixel HQ)","color":"yellow"}
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 4 run team modify thDisplayRound suffix {"text":" 4/5 (Space Station)","color":"yellow"}
execute if score dummy thInGame matches 1.. run execute if score dummy thCurrentRound matches 5 run team modify thDisplayRound suffix {"text":" 5/5 (Subway Station)","color":"yellow"}

## =

#display current score text
team join eventScoresDisp Cu
execute if score dummy thInGame matches 1.. run team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}

execute if score dummy thInGame matches 1.. run scoreboard players set Cu mainInfo 9

# round timer control
execute unless score dummy thTurnCD matches ..-101 run scoreboard players remove dummy thTurnCD 1
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

# execute if score dummy thStartTimer matches 300 run tellraw @a ["",{"text":"The hunt will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
# execute if score dummy thStartTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5

# execute if score dummy thStartTimer matches 205 run execute as @a at @s run function hybridracersost:play

# execute if score dummy thStartTimer matches 200 run tellraw @a ["",{"text":"The hunt will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
# execute if score dummy thStartTimer matches 100 run tellraw @a ["",{"text":"The hunt will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
# execute if score dummy thStartTimer matches 80 run tellraw @a ["",{"text":"The hunt will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
# execute if score dummy thStartTimer matches 60 run tellraw @a ["",{"text":"The hunt will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
# execute if score dummy thStartTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
# execute if score dummy thStartTimer matches 40 run tellraw @a ["",{"text":"The hunt will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
# execute if score dummy thStartTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
# execute if score dummy thStartTimer matches 20 run tellraw @a ["",{"text":"The hunt will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
# execute if score dummy thStartTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
# execute if score dummy thStartTimer matches 1 run item replace entity @a[team=!spec] armor.feet with diamond_boots[custom_name=[{"text":"Diamond Boots","italic":false,"color":"aqua"}],lore=[[{"text":"Depth Strider III","italic":false,"color":"blue"}]],enchantments={depth_strider:3,binding_curse:1},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
# # execute if score dummy thStartTimer matches 1..1010 run tp @a[team=!spec] @e[type=marker,limit=1,sort=random,tag=thStartPoint]
# execute if score dummy thStartTimer matches 0 run tellraw @a {"text":"The hunt has started!","color":"green"}
#execute if score dummy thStartTimer matches 250 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy thStartTimer matches 250 run function crc:targethunters/newround
execute if score dummy thStartTimer matches 250 run scoreboard players set dummy thInGame 1

# new turn
execute if score dummy thTurnCD matches 140 run tellraw @a {"text":"The next round will begin shortly...","color":"light_purple"}
execute if score dummy thTurnCD matches 140 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1 0.5

execute if score dummy thTurnCD matches 41 run tellraw @a {"text":"The next target is...","color":"red"}
execute if score dummy thTurnCD matches 41 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1 0.5

execute if score dummy thTurnCD matches 1 run function crc:targethunters/newturn



