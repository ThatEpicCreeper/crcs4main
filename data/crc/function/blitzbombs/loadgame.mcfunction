tag @a remove finalist
tag @a remove setFinalist

effect clear @a
clear @a[team=!spec]
tp @a @e[type=armor_stand,limit=1,sort=random,tag=bbSpawn]

scoreboard players set dummy bbStartTimer 602
scoreboard players set dummy bbInGame 1
scoreboard players set dummy bbInRound 0
scoreboard players set dummy bbTeamOneWins 0
scoreboard players set dummy bbTeamTwoWins 0
scoreboard players set dummy bbTieTimer -10
scoreboard players set dummy bbRoundCD -10

gamerule fallDamage true
gamerule keepInventory true
gamerule naturalRegeneration false
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

effect give @a minecraft:instant_health 1 4 true
effect give @a minecraft:weakness 60 10 true

scoreboard players set Bl mainInfo 13
scoreboard players set Map: mainInfo 12
# team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}
# scoreboard players set Cu mainInfo 9



title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""

function crc:blitzbombs/findpos






