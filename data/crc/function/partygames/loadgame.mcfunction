effect clear @a
clear @a[team=!spec]
tp @a @e[type=armor_stand,limit=1,sort=random,tag=pgSpawn]

scoreboard players set dummy partyGameNumber 1
scoreboard players set dummy pgOITCInGame 0
scoreboard players set dummy pgLavaRunInGame 0
scoreboard players set dummy pgTNTRunInGame 0
scoreboard players set dummy pgPregameTimer 1001
scoreboard players set dummy lrEndSequence -10
scoreboard players set dummy trEndSequence -10
scoreboard players set dummy oitcEndSequence -10
scoreboard players set dummy pgInGame 1
scoreboard players set dummy lrLavaTimer -100

scoreboard players set @a thisGameScore 0
scoreboard players set @a oitcDeathCount 0
scoreboard players set @a oitcKillCount 0
scoreboard players set @a trFinalPlacement -1
scoreboard players set @a lrInRoom 1
scoreboard players set @a lrCompletedRooms 0

scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0

scoreboard players set @e[type=marker] lrRiseTimer -1

gamemode adventure @a[team=!spec]

gamerule keepInventory true
gamerule naturalRegeneration false

effect give @a regeneration 51 5 true
effect give @a resistance 51 5 true
effect give @a saturation 51 5 true

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""




