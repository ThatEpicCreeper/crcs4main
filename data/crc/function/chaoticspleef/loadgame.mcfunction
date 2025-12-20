effect clear @a
clear @a[team=!spec]
tp @a @e[type=armor_stand,limit=1,sort=random,tag=csSpawn]


scoreboard players set dummy inGame 1
scoreboard players set dummy inLobby 0
scoreboard players set dummy inVoting 0

scoreboard players set @a thisGameScore 0

gamemode adventure @a[team=!spec]

gamerule keepInventory true
gamerule naturalRegeneration true

effect give @a regeneration 51 5 true
effect give @a resistance 51 5 true
effect give @a saturation 51 5 true

title @s times 0 40 10

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""




