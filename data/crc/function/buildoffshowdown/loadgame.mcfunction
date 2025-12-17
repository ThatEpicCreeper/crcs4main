clear @a[team=!spec]
tp @a @e[type=armor_stand,limit=1,sort=random,tag=bsBusSpawn]

execute as @a at @e[type=armor_stand,limit=1,sort=random,tag=bsBusSpawn] run spawnpoint @s ~ ~ ~

gamerule fallDamage true
gamemode adventure @a[team=!spec]

scoreboard players set @a thisGameScore 0

scoreboard players set dummy bsStartTimer 1001
scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""












