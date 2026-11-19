effect clear @a
clear @a[team=!spec]
tp @a @e[type=marker,limit=1,sort=random,tag=thLobby]


gamerule fall_damage false
gamerule keep_inventory true
effect give @a resistance 10000 4 true
effect give @a regeneration 10000 4 true
effect give @a saturation 10000 4 true
effect give @a weakness 10000 4 true

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

scoreboard players set Ta mainInfo 13
scoreboard players set Round: mainInfo 12
team join thDisplayRound Map:
team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}
team modify thDisplayRound suffix {"text":" 0/5","color":"yellow"}
scoreboard players set Cu mainInfo 9

scoreboard players set dummy thStartTimer 1001
scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0

scoreboard players set dummy thCurrentRound 0

scoreboard players set @a thisGameScore 0
scoreboard players set @a hudSkipCD 1101
