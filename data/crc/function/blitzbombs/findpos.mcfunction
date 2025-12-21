


scoreboard players set @a[team=spec] personalScore -100
execute as @a[team=!spec] at @s run tag @s remove finalist

scoreboard players set $1highest personalScore -500
execute as @a[team=!spec] at @s run execute if score @s personalScore > $1highest personalScore run scoreboard players operation $1highest personalScore = @s personalScore
execute as @a[team=!spec] at @s run execute if score @s personalScore > $1highest personalScore run scoreboard players operation $1highest personalScore = @s personalScore
execute as @a[team=!spec] at @s run execute if score @s personalScore = $1highest personalScore run tag @s add finalist

execute store result score dummy finalistCount run tag @a[tag=finalist] list

scoreboard players set $2highest personalScore -500
execute unless score dummy finalistCount matches 2.. run execute as @a[team=!spec,tag=!finalist] at @s run execute if score @s personalScore > $2highest personalScore run scoreboard players operation $2highest personalScore = @s personalScore
execute unless score dummy finalistCount matches 2.. run execute as @a[team=!spec,tag=!finalist] at @s run execute if score @s personalScore > $2highest personalScore run scoreboard players operation $2highest personalScore = @s personalScore
execute unless score dummy finalistCount matches 2.. run execute as @a[team=!spec,tag=!finalist] at @s run execute if score @s personalScore = $2highest personalScore run tag @s add finalist

tag @a[tag=finalist] add setFinalist
tag @r[tag=finalist] add bbTeam1
tag @a[tag=bbTeam1] remove finalist
tag @a[tag=finalist] add bbTeam2

gamemode spectator @a[tag=!setFinalist]


