
scoreboard players set @a[team=spec] hrCurrentPos -100
execute as @a[team=!spec] at @s run scoreboard players set @s hrCurrentPos -1

scoreboard players set $1highest hrRacePos -500
execute as @a[team=!spec] at @s run execute if score @s hrRacePos > $1highest hrRacePos run scoreboard players operation $1highest hrRacePos = @s hrRacePos
execute as @a[team=!spec] at @s run execute if score @s hrRacePos > $1highest hrRacePos run scoreboard players operation $1highest hrRacePos = @s hrRacePos
execute as @a[team=!spec] at @s run execute if score @s hrRacePos > $1highest hrRacePos run scoreboard players operation $1highest hrRacePos = @s hrRacePos
execute as @a[team=!spec] at @s run execute if score @s hrRacePos > $1highest hrRacePos run scoreboard players operation $1highest hrRacePos = @s hrRacePos
execute as @a[team=!spec] at @s run execute if score @s hrRacePos = $1highest hrRacePos run scoreboard players set @s hrCurrentPos 1

scoreboard players set $2highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $2highest hrRacePos run scoreboard players operation $2highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $2highest hrRacePos run scoreboard players operation $2highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $2highest hrRacePos run scoreboard players operation $2highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $2highest hrRacePos run scoreboard players operation $2highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $2highest hrRacePos run scoreboard players set @s hrCurrentPos 2

scoreboard players set $3highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $3highest hrRacePos run scoreboard players operation $3highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $3highest hrRacePos run scoreboard players operation $3highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $3highest hrRacePos run scoreboard players operation $3highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $3highest hrRacePos run scoreboard players operation $3highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $3highest hrRacePos run scoreboard players set @s hrCurrentPos 3

scoreboard players set $4highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $4highest hrRacePos run scoreboard players operation $4highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $4highest hrRacePos run scoreboard players operation $4highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $4highest hrRacePos run scoreboard players operation $4highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $4highest hrRacePos run scoreboard players operation $4highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $4highest hrRacePos run scoreboard players set @s hrCurrentPos 4

scoreboard players set $5highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $5highest hrRacePos run scoreboard players operation $5highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $5highest hrRacePos run scoreboard players operation $5highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $5highest hrRacePos run scoreboard players operation $5highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $5highest hrRacePos run scoreboard players operation $5highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $5highest hrRacePos run scoreboard players set @s hrCurrentPos 5

scoreboard players set $6highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $6highest hrRacePos run scoreboard players operation $6highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $6highest hrRacePos run scoreboard players operation $6highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $6highest hrRacePos run scoreboard players operation $6highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $6highest hrRacePos run scoreboard players operation $6highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $6highest hrRacePos run scoreboard players set @s hrCurrentPos 6

scoreboard players set $7highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $7highest hrRacePos run scoreboard players operation $7highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $7highest hrRacePos run scoreboard players operation $7highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $7highest hrRacePos run scoreboard players operation $7highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $7highest hrRacePos run scoreboard players operation $7highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $7highest hrRacePos run scoreboard players set @s hrCurrentPos 7

scoreboard players set $8highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $8highest hrRacePos run scoreboard players operation $8highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $8highest hrRacePos run scoreboard players operation $8highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $8highest hrRacePos run scoreboard players operation $8highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $8highest hrRacePos run scoreboard players operation $8highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $8highest hrRacePos run scoreboard players set @s hrCurrentPos 8

scoreboard players set $9highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $9highest hrRacePos run scoreboard players operation $9highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $9highest hrRacePos run scoreboard players operation $9highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $9highest hrRacePos run scoreboard players operation $9highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $9highest hrRacePos run scoreboard players operation $9highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $9highest hrRacePos run scoreboard players set @s hrCurrentPos 9

scoreboard players set $10highest hrRacePos -500
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $10highest hrRacePos run scoreboard players operation $10highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $10highest hrRacePos run scoreboard players operation $10highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $10highest hrRacePos run scoreboard players operation $10highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos > $10highest hrRacePos run scoreboard players operation $10highest hrRacePos = @s hrRacePos
execute as @a[team=!spec,scores={hrCurrentPos=..0}] at @s run execute if score @s hrRacePos = $10highest hrRacePos run scoreboard players set @s hrCurrentPos 10
