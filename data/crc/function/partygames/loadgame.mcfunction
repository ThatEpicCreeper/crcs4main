effect clear @a
clear @a[team=!spec]
tp @a @e[type=armor_stand,limit=1,sort=random,tag=pgSpawn]

scoreboard players set dummy partyGameNumber 1
scoreboard players set dummy pgOITCInGame 0
scoreboard players set dummy pgLavaRunInGame 0
scoreboard players set dummy pgTNTRunInGame 0
scoreboard players set dummy pgPregameTimer 1001

gamerule keepInventory true
gamerule naturalRegeneration false

effect give @a regeneration 51 5 true
effect give @a resistance 51 5 true
effect give @a saturation 51 5 true




