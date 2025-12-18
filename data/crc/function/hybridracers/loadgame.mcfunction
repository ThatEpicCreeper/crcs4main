effect clear @a
clear @a[team=!spec]
tp @a @e[type=armor_stand,limit=1,sort=random,tag=hrStartPoint]


##CUSTOMISABLE

scoreboard players set dummy maxCheckpoints 5
scoreboard players set dummy maxLaps 4

##
gamerule fallDamage false
gamerule keepInventory true
effect give @a resistance 10000 4 true
effect give @a regeneration 10000 4 true
effect give @a weakness 10000 4 true

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""

tag @a remove hrFinished
tag @a remove hrDNF
gamemode adventure @a[team=!spec]

scoreboard players set H mainInfo 13
scoreboard players set Map: mainInfo 12
team modify eventScoresDisp suffix {"text":"rrent Placements:","color":"gold"}
scoreboard players set Cu mainInfo 10

scoreboard players set dummy hrStartTimer 1001
scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0
scoreboard players set dummy finishedPlayers 0

scoreboard players set @a thisGameScore 0
scoreboard players set @a hrRacePos 0
scoreboard players set @a hudSkipCD 1101
scoreboard players set @a checkpoint 0
scoreboard players set @a lap 1
scoreboard players set @a hrCurrentPos 1

scoreboard players set @a hrTotalMinutes 0
scoreboard players set @a hrTotalSeconds 0
scoreboard players set @a hrTotalMiliseconds 0

scoreboard players set @a hrThisMinutes 0
scoreboard players set @a hrThisSeconds 0
scoreboard players set @a hrThisMiliseconds 0

scoreboard players set @a hrL1Minutes 0
scoreboard players set @a hrL1Seconds 0
scoreboard players set @a hrL1Miliseconds 0

scoreboard players set @a hrL2Minutes 0
scoreboard players set @a hrL2Seconds 0
scoreboard players set @a hrL2Miliseconds 0

scoreboard players set @a hrL3Minutes 0
scoreboard players set @a hrL3Seconds 0
scoreboard players set @a hrL3Miliseconds 0

scoreboard players set @a hrL4Minutes 0
scoreboard players set @a hrL4Seconds 0
scoreboard players set @a hrL4Miliseconds 0

scoreboard players set @a hrL5Minutes 0
scoreboard players set @a hrL5Seconds 0
scoreboard players set @a hrL5Miliseconds 0

scoreboard players set @a hrL6Minutes 0
scoreboard players set @a hrL6Seconds 0
scoreboard players set @a hrL6Miliseconds 0

scoreboard players set @a hrL7Minutes 0
scoreboard players set @a hrL7Seconds 0
scoreboard players set @a hrL7Miliseconds 0

item replace entity @a container.0 with gray_stained_glass_pane[custom_name=[{"text":"Reserved Item Slot","italic":false,"color":"dark_gray"}],lore=[[{"text":"Currently no item... please do not move this item!","italic":false,"color":"gray"}],[{"text":"It will be replaced with an item when necessary.","italic":false,"color":"gray"}]]]

