

execute as @e[type=armor_stand,tag=bsChestSpawn] at @s run setblock ~ ~ ~ chest{LootTable:"crc:chests/bs_regular_chest"} 

execute as @e[type=armor_stand,tag=bsChestSpawn,limit=5,sort=random] at @s run setblock ~ ~ ~ chest{LootTable:"crc:chests/bs_mythic_chest"} 







