execute as @e[type=marker,tag=ccRoomSpawn] at @s run execute store result score @s ccRandomRoomVal run random value 1..2

execute as @e[type=marker,tag=ccRoomSpawn] at @s run execute if score @s ccRandomRoomVal matches 1 run setblock ~ ~ ~ structure_block[mode=load]{name:"room1",posX:0,posY:0,posZ:0,sizeX:21,sizeY:21,sizeZ:21,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
execute as @e[type=marker,tag=ccRoomSpawn] at @s run execute if score @s ccRandomRoomVal matches 2 run setblock ~ ~ ~ structure_block[mode=load]{name:"room2",posX:0,posY:0,posZ:0,sizeX:21,sizeY:21,sizeZ:21,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace

execute as @e[type=marker,tag=ccRoomSpawn] at @s run setblock ~ ~1 ~ redstone_block