
scoreboard players set @a[team=spec] hrCurrentPos -100
execute as @a[team=!spec] at @s run scoreboard players set @s hrCurrentPos -1

scoreboard players set $1highest hrCurrentPos -500
execute as @a[team=!spec] at @s run execute if score @s hrRacePos > $1highest hrCurrentPos run scoreboard players operation $1highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec] at @s run execute if score @s hrRacePos > $1highest hrCurrentPos run scoreboard players operation $1highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec] at @s run execute if score @s hrRacePos = $1highest hrCurrentPos run scoreboard players set @s hrCurrentPos 1

scoreboard players set $2highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $2highest hrCurrentPos run scoreboard players operation $2highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $2highest hrCurrentPos run scoreboard players operation $2highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $2highest hrCurrentPos run scoreboard players set @s hrCurrentPos 2

scoreboard players set $3highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $3highest hrCurrentPos run scoreboard players operation $3highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $3highest hrCurrentPos run scoreboard players operation $3highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $3highest hrCurrentPos run scoreboard players set @s hrCurrentPos 3

scoreboard players set $4highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $4highest hrCurrentPos run scoreboard players operation $4highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $4highest hrCurrentPos run scoreboard players operation $4highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $4highest hrCurrentPos run scoreboard players set @s hrCurrentPos 4

scoreboard players set $5highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $5highest hrCurrentPos run scoreboard players operation $5highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $5highest hrCurrentPos run scoreboard players operation $5highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $5highest hrCurrentPos run scoreboard players set @s hrCurrentPos 5

scoreboard players set $6highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $6highest hrCurrentPos run scoreboard players operation $6highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $6highest hrCurrentPos run scoreboard players operation $6highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $6highest hrCurrentPos run scoreboard players set @s hrCurrentPos 6

scoreboard players set $7highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $7highest hrCurrentPos run scoreboard players operation $7highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $7highest hrCurrentPos run scoreboard players operation $7highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $7highest hrCurrentPos run scoreboard players set @s hrCurrentPos 7   

scoreboard players set $8highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $8highest hrCurrentPos run scoreboard players operation $8highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $8highest hrCurrentPos run scoreboard players operation $8highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $8highest hrCurrentPos run scoreboard players set @s hrCurrentPos 8

scoreboard players set $9highest hrCurrentPos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $9highest hrCurrentPos run scoreboard players operation $9highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $9highest hrCurrentPos run scoreboard players operation $9highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $9highest hrCurrentPos run scoreboard players set @s hrCurrentPos 9

scoreboard players reset $10highest hrCurrentPos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $10highest hrCurrentPos run scoreboard players operation $10highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $10highest hrCurrentPos run scoreboard players operation $10highest hrCurrentPos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $10highest hrCurrentPos run scoreboard players set @s hrCurrentPos 10


