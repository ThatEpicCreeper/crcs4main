effect clear @a
clear @a[team=!spec]
tp @a @e[type=marker,limit=1,sort=random,tag=csSpawn]

scoreboard players set Ch mainInfo 13
scoreboard players set Map: mainInfo 12
team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}
scoreboard players set Cu mainInfo 9


scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0

scoreboard players set dummy csStartTimer 610
scoreboard players set dummy csTNTTimer -2
scoreboard players set dummy csChaosTimer -2
scoreboard players set dummy csCurrentRound 0
scoreboard players set dummy csEndSequence -10
scoreboard players set dummy csInGame 1
scoreboard players set dummy csInRound 0

scoreboard players set @a thisGameScore 0
scoreboard players set @a csRoundsWon 0

gamemode adventure @a[team=!spec]

gamerule keepInventory true
gamerule naturalRegeneration true
gamerule doMobLoot false
gamerule doTileDrops false
gamerule mobGriefing true

effect give @a regeneration 51 5 true
effect give @a resistance 51 5 true
effect give @a saturation 51 5 true

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""




