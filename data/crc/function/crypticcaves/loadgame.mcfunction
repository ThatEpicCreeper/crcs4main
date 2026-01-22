effect clear @a
clear @a[team=!spec]
tp @a @e[type=marker,limit=1,sort=random,tag=ccSpawnPos]

##CUSTOMISABLE

##
gamerule fall_damage true
gamerule keep_inventory true
gamerule natural_health_regeneration false
gamerule pvp false
effect give @a resistance 50 4 true
effect give @a instant_health 1 5 true
effect give @a saturation 10000 4 true

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""

gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

scoreboard players set C mainInfo 13
scoreboard players set Map: mainInfo 12
team join ccDisplayMap Map:
team modify eventScoresDisp suffix {"text":"ayer Status:","color":"gold"}
team modify ccDisplayMap suffix {"text":" Classic Mines","color":"yellow"}
scoreboard players set Pl mainInfo 9

scoreboard players set dummy ccStartTimer 1001
scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0
scoreboard players set dummy finishedPlayers 0

scoreboard players set dummy ccGraceTimer 901
scoreboard players set dummy ccGraceTimerSec 45
scoreboard players set dummy ccTimeLeft 4800
scoreboard players set dummy ccInGame 0
scoreboard players set dummy ccGravelQueue 0
scoreboard players set dummy ccTotalResource 0
scoreboard players operation dummy ccPlayersLeft = dummy totalPlayers

scoreboard players set @a ccResource 0
scoreboard players set @a ccExitSeq -10
scoreboard players set @a ccExited 0
scoreboard players set @a ccPlaceSeq 0
scoreboard players set @a ccPlaceGravel 0
execute as @e[type=marker,tag=ccRespawnPoint,limit=1,sort=nearest] at @s run spawnpoint @a ~ ~ ~