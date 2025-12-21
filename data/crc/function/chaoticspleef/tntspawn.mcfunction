
scoreboard objectives add randomTNTSpawn dummy

execute store result score dummy randomTNTSpawn run random value 1..25

execute if score dummy randomTNTSpawn matches 1 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~1 {fuse:55}
execute if score dummy randomTNTSpawn matches 1 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 1 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 1 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~1 {fuse:55}

execute if score dummy randomTNTSpawn matches 2 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~1 {fuse:55}
execute if score dummy randomTNTSpawn matches 2 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 2 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 2 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~4 {fuse:55}

execute if score dummy randomTNTSpawn matches 3 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~1 {fuse:55}
execute if score dummy randomTNTSpawn matches 3 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 3 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 3 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~7 {fuse:55}

execute if score dummy randomTNTSpawn matches 4 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~1 {fuse:55}
execute if score dummy randomTNTSpawn matches 4 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 4 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 4 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~10 {fuse:55}

execute if score dummy randomTNTSpawn matches 5 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~1 {fuse:55}
execute if score dummy randomTNTSpawn matches 5 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 5 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 5 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~13 {fuse:55}

execute if score dummy randomTNTSpawn matches 6 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~4 {fuse:55}
execute if score dummy randomTNTSpawn matches 6 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 6 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 6 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~1 {fuse:55}

execute if score dummy randomTNTSpawn matches 7 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~4 {fuse:55}
execute if score dummy randomTNTSpawn matches 7 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 7 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 7 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~4 {fuse:55}

execute if score dummy randomTNTSpawn matches 8 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~4 {fuse:55}
execute if score dummy randomTNTSpawn matches 8 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 8 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 8 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~7 {fuse:55}

execute if score dummy randomTNTSpawn matches 9 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~4 {fuse:55}
execute if score dummy randomTNTSpawn matches 9 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 9 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 9 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~10 {fuse:55}

execute if score dummy randomTNTSpawn matches 10 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~4 {fuse:55}
execute if score dummy randomTNTSpawn matches 10 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 10 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 10 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~13 {fuse:55}

execute if score dummy randomTNTSpawn matches 11 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~7 {fuse:55}
execute if score dummy randomTNTSpawn matches 11 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 11 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 11 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~1 {fuse:55}

execute if score dummy randomTNTSpawn matches 12 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~7 {fuse:55}
execute if score dummy randomTNTSpawn matches 12 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 12 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 12 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~4 {fuse:55}

execute if score dummy randomTNTSpawn matches 13 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~7 {fuse:55}
execute if score dummy randomTNTSpawn matches 13 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 13 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 13 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~7 {fuse:55}

execute if score dummy randomTNTSpawn matches 14 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~7 {fuse:55}
execute if score dummy randomTNTSpawn matches 14 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 14 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 14 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~10 {fuse:55}

execute if score dummy randomTNTSpawn matches 15 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~7 {fuse:55}
execute if score dummy randomTNTSpawn matches 15 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 15 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 15 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~13 {fuse:55}

execute if score dummy randomTNTSpawn matches 16 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~10 {fuse:55}
execute if score dummy randomTNTSpawn matches 16 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 16 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 16 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~1 {fuse:55}

execute if score dummy randomTNTSpawn matches 17 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~10 {fuse:55}
execute if score dummy randomTNTSpawn matches 17 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 17 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 17 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~4 {fuse:55}

execute if score dummy randomTNTSpawn matches 18 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~10 {fuse:55}
execute if score dummy randomTNTSpawn matches 18 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 18 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 18 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~7 {fuse:55}

execute if score dummy randomTNTSpawn matches 19 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~10 {fuse:55}
execute if score dummy randomTNTSpawn matches 19 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 19 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 19 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~10 {fuse:55}

execute if score dummy randomTNTSpawn matches 20 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~10 {fuse:55}
execute if score dummy randomTNTSpawn matches 20 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 20 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 20 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~13 {fuse:55}

execute if score dummy randomTNTSpawn matches 21 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~1 ~ ~13 {fuse:55}
execute if score dummy randomTNTSpawn matches 21 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-1 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 21 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~-1 {fuse:55}
execute if score dummy randomTNTSpawn matches 21 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~1 {fuse:55}

execute if score dummy randomTNTSpawn matches 22 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~4 ~ ~13 {fuse:55}
execute if score dummy randomTNTSpawn matches 22 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-4 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 22 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~-4 {fuse:55}
execute if score dummy randomTNTSpawn matches 22 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~4 {fuse:55}

execute if score dummy randomTNTSpawn matches 23 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~7 ~ ~13 {fuse:55}
execute if score dummy randomTNTSpawn matches 23 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-7 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 23 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~-7 {fuse:55}
execute if score dummy randomTNTSpawn matches 23 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~7 {fuse:55}

execute if score dummy randomTNTSpawn matches 24 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~10 ~ ~13 {fuse:55}
execute if score dummy randomTNTSpawn matches 24 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-10 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 24 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~-10 {fuse:55}
execute if score dummy randomTNTSpawn matches 24 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~10 {fuse:55}

execute if score dummy randomTNTSpawn matches 25 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~13 {fuse:55}
execute if score dummy randomTNTSpawn matches 25 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 25 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~13 ~ ~-13 {fuse:55}
execute if score dummy randomTNTSpawn matches 25 run execute as @e[type=marker,tag=csChaosSpawn] at @s run summon tnt ~-13 ~ ~13 {fuse:55}



scoreboard players set dummy randomTNTSpawn 0







