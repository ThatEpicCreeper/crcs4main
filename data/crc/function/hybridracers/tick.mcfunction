

#scoreboard vars
scoreboard objectives add checkpoint dummy
scoreboard objectives add maxCheckpoints dummy
scoreboard objectives add lap dummy
scoreboard objectives add maxLaps dummy
scoreboard objectives add finalPos dummy
scoreboard objectives add finishedPlayers dummy
scoreboard objectives add hrStartTimer dummy
scoreboard objectives add hrDNFTimer dummy
scoreboard objectives add hrEndSequencing dummy
scoreboard objectives add hrInGame dummy
scoreboard objectives add hudCPCD dummy
scoreboard objectives add hudSkipCD dummy
scoreboard objectives add hrCurrentPos dummy
scoreboard objectives add hrRacePos dummy

scoreboard objectives add hrTotalMinutes dummy
scoreboard objectives add hrTotalSeconds dummy
scoreboard objectives add hrTotalMiliseconds dummy

scoreboard objectives add hrThisMinutes dummy
scoreboard objectives add hrThisSeconds dummy
scoreboard objectives add hrThisMiliseconds dummy

scoreboard objectives add hrL1Minutes dummy
scoreboard objectives add hrL1Seconds dummy
scoreboard objectives add hrL1Miliseconds dummy

scoreboard objectives add hrL2Minutes dummy
scoreboard objectives add hrL2Seconds dummy
scoreboard objectives add hrL2Miliseconds dummy

scoreboard objectives add hrL3Minutes dummy
scoreboard objectives add hrL3Seconds dummy
scoreboard objectives add hrL3Miliseconds dummy

scoreboard objectives add hrL4Minutes dummy
scoreboard objectives add hrL4Seconds dummy
scoreboard objectives add hrL4Miliseconds dummy

scoreboard objectives add hrL5Minutes dummy
scoreboard objectives add hrL5Seconds dummy
scoreboard objectives add hrL5Miliseconds dummy

scoreboard objectives add hrL6Minutes dummy
scoreboard objectives add hrL6Seconds dummy
scoreboard objectives add hrL6Miliseconds dummy

scoreboard objectives add hrL7Minutes dummy
scoreboard objectives add hrL7Seconds dummy
scoreboard objectives add hrL7Miliseconds dummy

#display game
team add hrDisplay
team modify hrDisplay color gold
team join hrDisplay H
team modify hrDisplay suffix {"text":"ybrid Racers","color":"gold"}

team add hrDisplayMap
team modify hrDisplayMap color yellow
team join hrDisplayMap Map:
team modify hrDisplayMap suffix {"text":" MapName","color":"yellow"}


#split / total timer
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,tag=!hrFinished] at @s run function crc:hybridracers/igtsplit

#display hud
execute if score dummy hrInGame matches 1.. run execute as @a[scores={hrTotalSeconds=10..,hrTotalMiliseconds=10..,hudCPCD=..0}] at @s run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"dark_purple"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"light_purple","bold":true},{"text":":","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"light_purple","bold":true},{"text":":","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"light_purple","bold":true},{"text":"0","color":"light_purple","bold":true},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Checkpoint: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"gold"},{"text":"/","bold":true,"color":"gold"},{"score":{"name":"dummy","objective":"maxCheckpoints"},"bold":true,"color":"gold"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Lap: ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"green"},{"text":"/","bold":true,"color":"green"},{"score":{"name":"dummy","objective":"maxLaps"},"bold":true,"color":"green"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Position: ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"bold":true,"color":"aqua"}]
execute if score dummy hrInGame matches 1.. run execute as @a[scores={hrTotalSeconds=10..,hrTotalMiliseconds=..9,hudCPCD=..0}] at @s run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"dark_purple"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"light_purple","bold":true},{"text":":","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"light_purple","bold":true},{"text":":0","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"light_purple","bold":true},{"text":"0","color":"light_purple","bold":true},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Checkpoint: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"gold"},{"text":"/","bold":true,"color":"gold"},{"score":{"name":"dummy","objective":"maxCheckpoints"},"bold":true,"color":"gold"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Lap: ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"green"},{"text":"/","bold":true,"color":"green"},{"score":{"name":"dummy","objective":"maxLaps"},"bold":true,"color":"green"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Position: ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"bold":true,"color":"aqua"}]
execute if score dummy hrInGame matches 1.. run execute as @a[scores={hrTotalSeconds=..9,hrTotalMiliseconds=10..,hudCPCD=..0}] at @s run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"dark_purple"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"light_purple","bold":true},{"text":":0","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"light_purple","bold":true},{"text":":","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"light_purple","bold":true},{"text":"0","color":"light_purple","bold":true},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Checkpoint: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"gold"},{"text":"/","bold":true,"color":"gold"},{"score":{"name":"dummy","objective":"maxCheckpoints"},"bold":true,"color":"gold"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Lap: ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"green"},{"text":"/","bold":true,"color":"green"},{"score":{"name":"dummy","objective":"maxLaps"},"bold":true,"color":"green"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Position: ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"bold":true,"color":"aqua"}]
execute if score dummy hrInGame matches 1.. run execute as @a[scores={hrTotalSeconds=..9,hrTotalMiliseconds=..9,hudCPCD=..0}] at @s run title @s actionbar ["",{"text":"Time: ","bold":true,"color":"dark_purple"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"light_purple","bold":true},{"text":":0","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"light_purple","bold":true},{"text":":0","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"light_purple","bold":true},{"text":"0","color":"light_purple","bold":true},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Checkpoint: ","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"gold"},{"text":"/","bold":true,"color":"gold"},{"score":{"name":"dummy","objective":"maxCheckpoints"},"bold":true,"color":"gold"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Lap: ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"lap"},"bold":true,"color":"green"},{"text":"/","bold":true,"color":"green"},{"score":{"name":"dummy","objective":"maxLaps"},"bold":true,"color":"green"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Position: ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"bold":true,"color":"aqua"}]

#checkpoint-lap system
function crc:hybridracers/checkpointlap

#pads
function crc:hybridracers/mechanics

#items
function crc:hybridracers/items
execute unless score dummy hrInGame matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}}]

#find position
execute if score dummy tickTimer matches 11 run function crc:hybridracers/findpos

#start timer
execute unless score dummy hrStartTimer matches ..-101 run scoreboard players remove dummy hrStartTimer 1

execute if score dummy hrStartTimer matches 900 run say game rules fill
execute if score dummy hrStartTimer matches 300 run tellraw @a ["",{"text":"The race will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy hrStartTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy hrStartTimer matches 200 run tellraw @a ["",{"text":"The race will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy hrStartTimer matches 100 run tellraw @a ["",{"text":"The race will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy hrStartTimer matches 80 run tellraw @a ["",{"text":"The race will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy hrStartTimer matches 60 run tellraw @a ["",{"text":"The race will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy hrStartTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy hrStartTimer matches 40 run tellraw @a ["",{"text":"The race will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy hrStartTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy hrStartTimer matches 20 run tellraw @a ["",{"text":"The race will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy hrStartTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy hrStartTimer matches 1 run item replace entity @a[team=!spec] armor.feet with diamond_boots[custom_name=[{"text":"Diamond Boots","italic":false,"color":"aqua"}],lore=[[{"text":"Depth Strider III","italic":false,"color":"blue"}]],enchantments={depth_strider:3,binding_curse:1},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute if score dummy hrStartTimer matches 0 run tellraw @a {"text":"The race has started!","color":"green"}
execute if score dummy hrStartTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy hrStartTimer matches 0 run scoreboard players set dummy hrInGame 1

#finish race
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run scoreboard players add dummy finishedPlayers 1

execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run execute if score dummy finishedPlayers matches 1 run scoreboard players add @s thisGameScore 40
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run execute if score dummy finishedPlayers matches 2 run scoreboard players add @s thisGameScore 30
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run execute if score dummy finishedPlayers matches 3 run scoreboard players add @s thisGameScore 20
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run execute if score dummy finishedPlayers matches 4 run scoreboard players add @s thisGameScore 10
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run execute if score dummy finishedPlayers matches 5.. run scoreboard players add @s thisGameScore 7

execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run scoreboard players operation @s finalPos = dummy finishedPlayers
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.1 1
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run title @s actionbar ["",{"text":"Congratulations! You finished the race in Position #","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"finalPos"},"bold":true,"color":"yellow"},{"text":"!","bold":true,"color":"yellow"}]
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished,scores={hrTotalSeconds=10..,hrTotalMiliseconds=10..}] at @s run execute if score @s lap > dummy maxLaps run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished the race in ","color":"green"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"yellow"},{"text":"0","color":"yellow"},{"text":"!","color":"yellow"}]
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished,scores={hrTotalSeconds=10..,hrTotalMiliseconds=..9}] at @s run execute if score @s lap > dummy maxLaps run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished the race in ","color":"green"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"yellow"},{"text":"0","color":"yellow"},{"text":"!","color":"yellow"}]
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished,scores={hrTotalSeconds=..9,hrTotalMiliseconds=10..}] at @s run execute if score @s lap > dummy maxLaps run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished the race in ","color":"green"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"yellow"},{"text":"0","color":"yellow"},{"text":"!","color":"yellow"}]
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished,scores={hrTotalSeconds=..9,hrTotalMiliseconds=..9}] at @s run execute if score @s lap > dummy maxLaps run tellraw @a ["",{"selector":"@s","bold":true,"color":"green"},{"text":" finished the race in ","color":"green"},{"score":{"name":"@s","objective":"hrTotalMinutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalSeconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrTotalMiliseconds"},"color":"yellow"},{"text":"0","color":"yellow"},{"text":"!","color":"yellow"}]
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run gamemode spectator @s
execute if score dummy hrInGame matches 1 run execute as @a[team=!spec,tag=!hrFinished] at @s run execute if score @s lap > dummy maxLaps run tag @s add hrFinished

#dnf timer
execute unless score dummy hrDNFTimer matches ..-1 run scoreboard players remove dummy hrDNFTimer 1

execute if score dummy hrEndSequencing matches ..-5 run execute as @a[scores={finalPos=1},tag=hrFinished] at @s run execute unless score dummy hrDNFTimer matches -5.. run scoreboard players set dummy hrDNFTimer 3001
execute if score dummy hrDNFTimer matches 3000 run tellraw @a {"text":"The race ends in 150 seconds!","bold":true,"color":"red"}
execute if score dummy hrDNFTimer matches 1800 run tellraw @a {"text":"The race ends in 90 seconds!","bold":true,"color":"red"}
execute if score dummy hrDNFTimer matches 1200 run tellraw @a {"text":"The race ends in 60 seconds!","bold":true,"color":"red"}
execute if score dummy hrDNFTimer matches 600 run tellraw @a {"text":"The race ends in 30 seconds!","bold":true,"color":"red"}
execute if score dummy hrDNFTimer matches 200 run tellraw @a {"text":"The race ends in 10 seconds!","bold":true,"color":"red"}
execute if score dummy hrDNFTimer matches 1 run tag @a[team=!spec,tag=!hrFinished] add hrDNF
execute if score dummy hrDNFTimer matches 1 run function crc:hybridracers/endseq

#end race
execute if score dummy hrEndSequencing matches ..-5 run execute if score dummy hrInGame matches 1.. run execute if score dummy finishedPlayers >= dummy totalPlayers run function crc:hybridracers/endseq

#end seq
execute unless score dummy hrEndSequencing matches ..-5 run scoreboard players remove dummy hrEndSequencing 1

execute if score dummy hrEndSequencing matches 500 run title @a title {"text":"The Race has Ended!","bold":true,"color":"green"}
execute if score dummy hrEndSequencing matches 500 run title @a times 0 100 10
execute if score dummy hrEndSequencing matches 500 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1

execute if score dummy hrEndSequencing matches 500 run team modify player1 suffix ""
execute if score dummy hrEndSequencing matches 500 run team modify player2 suffix ""
execute if score dummy hrEndSequencing matches 500 run team modify player3 suffix ""
execute if score dummy hrEndSequencing matches 500 run team modify player4 suffix ""

execute if score dummy hrEndSequencing matches 400 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy hrEndSequencing matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy hrEndSequencing matches 400 run tellraw @a {"text":"Final Standings:","bold":true,"color":"gold"}
execute if score dummy hrEndSequencing matches 400 run tellraw @a ["",{"text":"1st - ","bold":true,"color":"yellow"},{"selector":"@a[scores={finalPos=1}]","bold":true,"color":"yellow"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 2.. run tellraw @a ["",{"text":"2nd - ","bold":true,"color":"#D7D6D7"},{"selector":"@a[scores={finalPos=2}]","bold":true,"color":"#D7D6D7"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 3.. run tellraw @a ["",{"text":"3rd - ","bold":true,"color":"#B76E79"},{"selector":"@a[scores={finalPos=3}]","bold":true,"color":"#B76E79"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 4.. run tellraw @a ["",{"text":"4th - ","bold":true,"color":"gray"},{"selector":"@a[scores={finalPos=4}]","bold":true,"color":"gray"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 5.. run tellraw @a ["",{"text":"5th - ","bold":true,"color":"gray"},{"selector":"@a[scores={finalPos=5}]","bold":true,"color":"gray"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 6.. run tellraw @a ["",{"text":"6th - ","bold":true,"color":"gray"},{"selector":"@a[scores={finalPos=6}]","bold":true,"color":"gray"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 7.. run tellraw @a ["",{"text":"7th - ","bold":true,"color":"gray"},{"selector":"@a[scores={finalPos=7}]","bold":true,"color":"gray"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 8.. run tellraw @a ["",{"text":"8th - ","bold":true,"color":"gray"},{"selector":"@a[scores={finalPos=8}]","bold":true,"color":"gray"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 9.. run tellraw @a ["",{"text":"9th - ","bold":true,"color":"gray"},{"selector":"@a[scores={finalPos=9}]","bold":true,"color":"gray"}]
execute if score dummy hrEndSequencing matches 400 run execute if score dummy finishedPlayers matches 10.. run tellraw @a ["",{"text":"10th - ","bold":true,"color":"gray"},{"selector":"@a[scores={finalPos=10}]","bold":true,"color":"gray"}]
execute if score dummy hrEndSequencing matches 400 run execute unless score dummy finishedPlayers = dummy totalPlayers run tellraw @a ["",{"text":"DNF Players: ","bold":true,"color":"#696968"},{"selector":"@a[tag=hrDNF]","bold":true,"color":"#696968"}]
execute if score dummy hrEndSequencing matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy hrEndSequencing matches 300 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy hrEndSequencing matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy hrEndSequencing matches 300 run tellraw @a {"text":"Your lap times:","bold":true,"color":"green"}

execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 1.. run execute as @a run execute if entity @s[scores={hrL1Seconds=10..,hrL1Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 1: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL1Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 1.. run execute as @a run execute if entity @s[scores={hrL1Seconds=10..,hrL1Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 1: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL1Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 1.. run execute as @a run execute if entity @s[scores={hrL1Seconds=..9,hrL1Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 1: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL1Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 1.. run execute as @a run execute if entity @s[scores={hrL1Seconds=..9,hrL1Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 1: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL1Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL1Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]

execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 2.. run execute as @a run execute if entity @s[scores={hrL2Seconds=10..,hrL2Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 2: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL2Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 2.. run execute as @a run execute if entity @s[scores={hrL2Seconds=10..,hrL2Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 2: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL2Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 2.. run execute as @a run execute if entity @s[scores={hrL2Seconds=..9,hrL2Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 2: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL2Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 2.. run execute as @a run execute if entity @s[scores={hrL2Seconds=..9,hrL2Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 2: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL2Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL2Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]

execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 3.. run execute as @a run execute if entity @s[scores={hrL3Seconds=10..,hrL3Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 3: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL3Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 3.. run execute as @a run execute if entity @s[scores={hrL3Seconds=10..,hrL3Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 3: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL3Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 3.. run execute as @a run execute if entity @s[scores={hrL3Seconds=..9,hrL3Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 3: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL3Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 3.. run execute as @a run execute if entity @s[scores={hrL3Seconds=..9,hrL3Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 3: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL3Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL3Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]

execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 4.. run execute as @a run execute if entity @s[scores={hrL4Seconds=10..,hrL4Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 4: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL4Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 4.. run execute as @a run execute if entity @s[scores={hrL4Seconds=10..,hrL4Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 4: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL4Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 4.. run execute as @a run execute if entity @s[scores={hrL4Seconds=..9,hrL4Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 4: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL4Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 4.. run execute as @a run execute if entity @s[scores={hrL4Seconds=..9,hrL4Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 4: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL4Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL4Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]

execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 5.. run execute as @a run execute if entity @s[scores={hrL5Seconds=10..,hrL5Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 5: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL5Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 5.. run execute as @a run execute if entity @s[scores={hrL5Seconds=10..,hrL5Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 5: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL5Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 5.. run execute as @a run execute if entity @s[scores={hrL5Seconds=..9,hrL5Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 5: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL5Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 5.. run execute as @a run execute if entity @s[scores={hrL5Seconds=..9,hrL5Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 5: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL5Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL5Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]

execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 6.. run execute as @a run execute if entity @s[scores={hrL6Seconds=10..,hrL6Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 6: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL6Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 6.. run execute as @a run execute if entity @s[scores={hrL6Seconds=10..,hrL6Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 6: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL6Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 6.. run execute as @a run execute if entity @s[scores={hrL6Seconds=..9,hrL6Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 6: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL6Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 6.. run execute as @a run execute if entity @s[scores={hrL6Seconds=..9,hrL6Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 6: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL6Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL6Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]

execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 7.. run execute as @a run execute if entity @s[scores={hrL7Seconds=10..,hrL7Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 7: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL7Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 7.. run execute as @a run execute if entity @s[scores={hrL7Seconds=10..,hrL7Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 7: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL7Minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 7.. run execute as @a run execute if entity @s[scores={hrL7Seconds=..9,hrL7Miliseconds=10..}] run tellraw @s ["",{"text":"Lap 7: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL7Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Seconds"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]
execute if score dummy hrEndSequencing matches 300 run execute if score dummy maxLaps matches 7.. run execute as @a run execute if entity @s[scores={hrL7Seconds=..9,hrL7Miliseconds=..9}] run tellraw @s ["",{"text":"Lap 7: ","color":"aqua"},{"score":{"name":"@s","objective":"hrL7Minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Seconds"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"@s","objective":"hrL7Miliseconds"},"color":"yellow"},{"text":"0","color":"yellow"}]

execute if score dummy hrEndSequencing matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy hrEndSequencing matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy hrEndSequencing matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy hrEndSequencing matches 200 run tellraw @a {"text":"Scores this game (unmultiplied):","bold":true,"color":"green"}
execute if score dummy hrEndSequencing matches 200 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"aqua"}]
execute if score dummy hrEndSequencing matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy hrEndSequencing matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy hrEndSequencing matches 100 run tellraw @a {"text":"Returning to lobby in 5 seconds...","color":"red"}
execute if score dummy hrEndSequencing matches 100 run tag @a remove hrDNF

execute if score dummy hrEndSequencing matches 1 run function crc:tolobby