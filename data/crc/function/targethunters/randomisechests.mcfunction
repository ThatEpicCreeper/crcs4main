
execute store result score chest1Roll thRandomChestRoll run random value 1..3
execute store result score chest2Roll thRandomChestRoll run random value 1..3
execute store result score chest3Roll thRandomChestRoll run random value 1..3
execute store result score chest4Roll thRandomChestRoll run random value 1..3
execute store result score chest5Roll thRandomChestRoll run random value 1..3
execute store result score chest6Roll thRandomChestRoll run random value 1..3
execute store result score chest7Roll thRandomChestRoll run random value 1..3
execute store result score chest8Roll thRandomChestRoll run random value 1..3
execute store result score chest9Roll thRandomChestRoll run random value 1..3
execute store result score chest10Roll thRandomChestRoll run random value 1..3
execute store result score star1ChestRoll thRandomChestRoll run random value 1..5
execute store result score star2ChestRoll thRandomChestRoll run random value 1..5

execute as @e[type=marker,tag=thChest1] at @s run execute if score chest1Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest1] at @s run execute if score chest1Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest1] at @s run execute if score chest1Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest2] at @s run execute if score chest2Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest2] at @s run execute if score chest2Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest2] at @s run execute if score chest2Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest3] at @s run execute if score chest3Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest3] at @s run execute if score chest3Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest3] at @s run execute if score chest3Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest4] at @s run execute if score chest4Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest4] at @s run execute if score chest4Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest4] at @s run execute if score chest4Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest5] at @s run execute if score chest5Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest5] at @s run execute if score chest5Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest5] at @s run execute if score chest5Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest6] at @s run execute if score chest6Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest6] at @s run execute if score chest6Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest6] at @s run execute if score chest6Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest7] at @s run execute if score chest7Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest7] at @s run execute if score chest7Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest7] at @s run execute if score chest7Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest8] at @s run execute if score chest8Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest8] at @s run execute if score chest8Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest8] at @s run execute if score chest8Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest9] at @s run execute if score chest9Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest9] at @s run execute if score chest9Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest9] at @s run execute if score chest9Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute as @e[type=marker,tag=thChest10] at @s run execute if score chest10Roll thRandomChestRoll matches 1 run clone 41 51 10 41 51 10 ~ ~ ~
execute as @e[type=marker,tag=thChest10] at @s run execute if score chest10Roll thRandomChestRoll matches 2 run clone 41 51 8 41 51 8 ~ ~ ~
execute as @e[type=marker,tag=thChest10] at @s run execute if score chest10Roll thRandomChestRoll matches 3 run clone 41 51 6 41 51 6 ~ ~ ~

execute if score star1ChestRoll thRandomChestRoll matches 1 run execute as @e[type=marker,tag=thChest1] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star1ChestRoll thRandomChestRoll matches 2 run execute as @e[type=marker,tag=thChest2] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star1ChestRoll thRandomChestRoll matches 3 run execute as @e[type=marker,tag=thChest3] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star1ChestRoll thRandomChestRoll matches 4 run execute as @e[type=marker,tag=thChest4] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star1ChestRoll thRandomChestRoll matches 5 run execute as @e[type=marker,tag=thChest5] at @s run clone 41 51 4 41 51 4 ~ ~ ~

execute if score star2ChestRoll thRandomChestRoll matches 1 run execute as @e[type=marker,tag=thChest6] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star2ChestRoll thRandomChestRoll matches 2 run execute as @e[type=marker,tag=thChest7] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star2ChestRoll thRandomChestRoll matches 3 run execute as @e[type=marker,tag=thChest8] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star2ChestRoll thRandomChestRoll matches 4 run execute as @e[type=marker,tag=thChest9] at @s run clone 41 51 4 41 51 4 ~ ~ ~
execute if score star2ChestRoll thRandomChestRoll matches 5 run execute as @e[type=marker,tag=thChest10] at @s run clone 41 51 4 41 51 4 ~ ~ ~
