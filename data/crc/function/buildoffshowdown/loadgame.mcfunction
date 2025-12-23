effect clear @a
clear @a[team=!spec]
tp @a @e[type=armor_stand,limit=1,sort=random,tag=bsBusSpawn]

execute as @a at @e[type=armor_stand,limit=1,sort=random,tag=bsBusSpawn] run spawnpoint @s ~ ~ ~

gamerule fallDamage true
gamerule keepInventory false
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

effect give @a minecraft:health_boost 10000 4 true
effect give @a minecraft:instant_health 1 4 true
effect give @a minecraft:weakness 60 10 true

scoreboard players set B mainInfo 13
scoreboard players set Map mainInfo 12
team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}
team modify bsDisplayMap suffix {"text":": MapName","color":"yellow"}
scoreboard players set Cu mainInfo 9

scoreboard players set @a thisGameScore 0
scoreboard players set @a[team=!spec] bsLivesLeft 3
scoreboard players set @a[team=!spec] bsRespawnsLeft 2
scoreboard players set @a[team=!spec] bsOnKill 0
scoreboard players set @a[team=!spec] bsOnDeath 0
scoreboard players set @a bsTotalKills 0
scoreboard players set @a bsFinalPlacement -1
scoreboard players set @a bsBuildsPlaced 0
scoreboard players set @a bsBuildsLeft 0
scoreboard players set @a bsGainBuildProg 0
scoreboard players operation dummy bsPlayersLeft = dummy totalPlayers

scoreboard players set dummy bsStartTimer 1001
scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0
scoreboard players set dummy bsInOvertime 0
scoreboard players set dummy bsEndSequence -10
scoreboard players set dummy bsTimeLeft 14400

scoreboard objectives setdisplay below_name playerHealth

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""

worldborder set 599
execute as @e[type=minecraft:armor_stand,tag=bsBusSpawn] at @s run worldborder center ~ ~
worldborder damage amount 2









