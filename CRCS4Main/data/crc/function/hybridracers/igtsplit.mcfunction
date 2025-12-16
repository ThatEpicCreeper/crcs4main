
#total race timer
scoreboard players add @s hrTotalMiliseconds 50
execute if score @s hrTotalMiliseconds matches 1000.. run scoreboard players add @s hrTotalSeconds 1
execute if score @s hrTotalMiliseconds matches 1000.. run scoreboard players set @s hrTotalMiliseconds 0
execute if score @s hrTotalSeconds matches 60.. run scoreboard players add @s hrTotalMinutes 1
execute if score @s hrTotalSeconds matches 60.. run scoreboard players set @s hrTotalSeconds 0

#current lap split
scoreboard players add @s hrThisMiliseconds 50
execute if score @s hrThisMiliseconds matches 1000.. run scoreboard players add @s hrThisSeconds 1
execute if score @s hrThisMiliseconds matches 1000.. run scoreboard players set @s hrThisMiliseconds 0
execute if score @s hrThisSeconds matches 60.. run scoreboard players add @s hrThisMinutes 1
execute if score @s hrThisSeconds matches 60.. run scoreboard players set @s hrThisSeconds 0

execute if score @s checkpoint >= dummy maxCheckpoints run execute if entity @e[team=!spec,type=armor_stand,tag=hrFinishLine,distance=..3,limit=1] run execute if entity @s[scores={hrThisSeconds=10..,hrThisMiliseconds=100..}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished ","color":"green"},{"text":"Lap ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"aqua"},{"text":" in ","color":"green"},{"score":{"name":"@s","objective":"hrThisMinutes"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisSeconds"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisMiliseconds"},"color":"light_purple"},{"text":"!","color":"light_purple"}]
execute if score @s checkpoint >= dummy maxCheckpoints run execute if entity @e[team=!spec,type=armor_stand,tag=hrFinishLine,distance=..3,limit=1] run execute if entity @s[scores={hrThisSeconds=10..,hrThisMiliseconds=..99}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished ","color":"green"},{"text":"Lap ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"aqua"},{"text":" in ","color":"green"},{"score":{"name":"@s","objective":"hrThisMinutes"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisSeconds"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisMiliseconds"},"color":"light_purple"},{"text":"!","color":"light_purple"}]
execute if score @s checkpoint >= dummy maxCheckpoints run execute if entity @e[team=!spec,type=armor_stand,tag=hrFinishLine,distance=..3,limit=1] run execute if entity @s[scores={hrThisSeconds=..9,hrThisMiliseconds=100..}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished ","color":"green"},{"text":"Lap ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"aqua"},{"text":" in ","color":"green"},{"score":{"name":"@s","objective":"hrThisMinutes"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisSeconds"},"color":"light_purple"},{"text":":","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisMiliseconds"},"color":"light_purple"},{"text":"!","color":"light_purple"}]
execute if score @s checkpoint >= dummy maxCheckpoints run execute if entity @e[team=!spec,type=armor_stand,tag=hrFinishLine,distance=..3,limit=1] run execute if entity @s[scores={hrThisSeconds=..9,hrThisMiliseconds=..99}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished ","color":"green"},{"text":"Lap ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"aqua"},{"text":" in ","color":"green"},{"score":{"name":"@s","objective":"hrThisMinutes"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisSeconds"},"color":"light_purple"},{"text":":0","color":"light_purple"},{"score":{"name":"@s","objective":"hrThisMiliseconds"},"color":"light_purple"},{"text":"!","color":"light_purple"}]


#individual lap splits
execute if score @s lap matches 1 run scoreboard players add @s hrL1Miliseconds 50
execute if score @s hrL1Miliseconds matches 1000.. run scoreboard players add @s hrL1Seconds 1
execute if score @s hrL1Miliseconds matches 1000.. run scoreboard players set @s hrL1Miliseconds 0
execute if score @s hrL1Seconds matches 60.. run scoreboard players add @s hrL1Minutes 1
execute if score @s hrL1Seconds matches 60.. run scoreboard players set @s hrL1Seconds 0

execute if score @s lap matches 2 run scoreboard players add @s hrL2Miliseconds 50
execute if score @s hrL2Miliseconds matches 1000.. run scoreboard players add @s hrL2Seconds 1
execute if score @s hrL2Miliseconds matches 1000.. run scoreboard players set @s hrL2Miliseconds 0
execute if score @s hrL2Seconds matches 60.. run scoreboard players add @s hrL2Minutes 1
execute if score @s hrL2Seconds matches 60.. run scoreboard players set @s hrL2Seconds 0

execute if score @s lap matches 3 run scoreboard players add @s hrL3Miliseconds 50
execute if score @s hrL3Miliseconds matches 1000.. run scoreboard players add @s hrL3Seconds 1
execute if score @s hrL3Miliseconds matches 1000.. run scoreboard players set @s hrL3Miliseconds 0
execute if score @s hrL3Seconds matches 60.. run scoreboard players add @s hrL3Minutes 1
execute if score @s hrL3Seconds matches 60.. run scoreboard players set @s hrL3Seconds 0

execute if score @s lap matches 4 run scoreboard players add @s hrL4Miliseconds 50
execute if score @s hrL4Miliseconds matches 1000.. run scoreboard players add @s hrL4Seconds 1
execute if score @s hrL4Miliseconds matches 1000.. run scoreboard players set @s hrL4Miliseconds 0
execute if score @s hrL4Seconds matches 60.. run scoreboard players add @s hrL4Minutes 1
execute if score @s hrL4Seconds matches 60.. run scoreboard players set @s hrL4Seconds 0

execute if score @s lap matches 5 run scoreboard players add @s hrL5Miliseconds 50
execute if score @s hrL5Miliseconds matches 1000.. run scoreboard players add @s hrL5Seconds 1
execute if score @s hrL5Miliseconds matches 1000.. run scoreboard players set @s hrL5Miliseconds 0
execute if score @s hrL5Seconds matches 60.. run scoreboard players add @s hrL5Minutes 1
execute if score @s hrL5Seconds matches 60.. run scoreboard players set @s hrL5Seconds 0

execute if score @s lap matches 6 run scoreboard players add @s hrL6Miliseconds 50
execute if score @s hrL6Miliseconds matches 1000.. run scoreboard players add @s hrL6Seconds 1
execute if score @s hrL6Miliseconds matches 1000.. run scoreboard players set @s hrL6Miliseconds 0
execute if score @s hrL6Seconds matches 60.. run scoreboard players add @s hrL6Minutes 1
execute if score @s hrL6Seconds matches 60.. run scoreboard players set @s hrL6Seconds 0

execute if score @s lap matches 7 run scoreboard players add @s hrL7Miliseconds 50
execute if score @s hrL7Miliseconds matches 1000.. run scoreboard players add @s hrL7Seconds 1
execute if score @s hrL7Miliseconds matches 1000.. run scoreboard players set @s hrL7Miliseconds 0
execute if score @s hrL7Seconds matches 60.. run scoreboard players add @s hrL7Minutes 1
execute if score @s hrL7Seconds matches 60.. run scoreboard players set @s hrL7Seconds 0

