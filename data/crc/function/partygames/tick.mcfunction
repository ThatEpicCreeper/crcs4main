
#scoreboard vars
scoreboard objectives add partyGameNumber dummy
scoreboard objectives add pgOITCInGame dummy
scoreboard objectives add pgTNTRunInGame dummy
scoreboard objectives add pgLavaRunInGame dummy
scoreboard objectives add pgPregameTimer dummy
scoreboard objectives add pgInGame dummy


#remove score
execute if score dummy pgPregameTimer matches -1.. run scoreboard players remove dummy pgPregameTimer 1

#set game 
execute if score dummy partyGameNumber matches 1 run function crc:partygames/oitc
execute if score dummy partyGameNumber matches 2 run function crc:partygames/tntrun
execute if score dummy partyGameNumber matches 3 run function crc:partygames/lavarun


#show game
execute if score dummy pgInGame matches 1.. run scoreboard players set Pa mainInfo 13
execute if score dummy pgInGame matches 1.. run scoreboard players set Round: mainInfo 12
execute if score dummy pgInGame matches 1.. run team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}
execute if score dummy pgInGame matches 1.. run scoreboard players set Cu mainInfo 9

#display game
team add pgDisplay
team modify pgDisplay color gold
team join pgDisplay Pa
team modify pgDisplay suffix {"text":"rty Arena","color":"gold"}

team add pgDisplayGame
team modify pgDisplayGame color yellow
team join pgDisplayGame Round:
execute if score dummy partyGameNumber matches 1 run team modify pgDisplayGame suffix {"text":" One in the Chamber","color":"yellow"}
execute if score dummy partyGameNumber matches 2 run team modify pgDisplayGame suffix {"text":" TNT Run","color":"yellow"}
execute if score dummy partyGameNumber matches 3 run team modify pgDisplayGame suffix {"text":" Flood Escape","color":"yellow"}

#game explain
execute if score dummy pgPregameTimer matches 900 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy pgPregameTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy pgPregameTimer matches 900 run tellraw @a ["",{"text":"Welcome to Party Arena!","bold":true,"color":"yellow"},{"text":"\n\n"},{"text":"- In this game, players will play in 3 separate minigames!","color":"green"}]
execute if score dummy pgPregameTimer matches 900 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy pgPregameTimer matches 800 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy pgPregameTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy pgPregameTimer matches 800 run tellraw @a ["",{"text":"The minigames this event are:","color":"aqua"},{"text":"\n\n"},{"text":"- One in the Chamber\n- TNT Run\n- Flood Escape","color":"green"}]
execute if score dummy pgPregameTimer matches 800 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy pgPregameTimer matches 700 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy pgPregameTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy pgPregameTimer matches 700 run tellraw @a {"text":"- Score accumulated throughout is totalled at the end.\n\n- Good luck, have fun!","color":"green"}
execute if score dummy pgPregameTimer matches 700 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}





