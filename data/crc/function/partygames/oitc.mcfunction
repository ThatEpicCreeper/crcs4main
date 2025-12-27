
#scoreboard vars
scoreboard objectives add oitcOnKill playerKillCount
scoreboard objectives add oitcOnDeath deathCount
scoreboard objectives add oitcDeathSequence dummy
scoreboard objectives add oitcNearPlayerCount dummy
scoreboard objectives add oitcArrowCount dummy
scoreboard objectives add oitcTimeLeft dummy
scoreboard objectives add oitcEndSequence dummy
scoreboard objectives add oitcDeathCount deathCount
scoreboard objectives add oitcKillCount playerKillCount
scoreboard objectives add oitcProtectedTimer dummy


#saturation
execute if score dummy pgOITCInGame matches 1.. run effect give @a saturation 10 0 true


#arrow check
execute as @a at @s run execute store result score @s oitcArrowCount run clear @s minecraft:arrow 0


#on kill
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run scoreboard players add @s thisGameScore 1
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run tellraw @s ["",{"text":"+1 Score ","color":"green"},{"text":"(Kill)","color":"aqua"}]
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run execute unless score @s oitcArrowCount matches 1.. run give @s arrow 1
execute as @a at @s run execute if score @s oitcOnKill matches 1.. run effect give @s regeneration 5 2 true
scoreboard players set @a oitcOnKill 0

#on death
execute as @a at @s run execute if score @s oitcDeathSequence matches 1.. run scoreboard players remove @s oitcDeathSequence 1

execute as @a[team=!spec,scores={oitcOnDeath=1..}] at @s run scoreboard players set @s oitcDeathSequence 4
scoreboard players set @a oitcOnDeath 0

execute as @a at @s run execute if score @s oitcDeathSequence matches 1 run tp @s @e[type=marker,tag=respawnGen,limit=1,sort=random]
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run clear @s arrow
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run give @s arrow
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run effect give @s regeneration 1000 0 true
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run effect give @s resistance 3 4 true
execute as @a at @s run execute if score @s oitcDeathSequence matches 2 run scoreboard players set @s oitcProtectedTimer 61

execute as @a at @s run execute if score @s oitcProtectedTimer matches 0.. run scoreboard players remove @s oitcProtectedTimer 1
execute as @a at @s run execute if score @s oitcProtectedTimer matches 60 run item replace entity @s armor.head with minecraft:iron_helmet
execute as @a at @s run execute if score @s oitcProtectedTimer matches 60 run item replace entity @s armor.chest with minecraft:iron_chestplate
execute as @a at @s run execute if score @s oitcProtectedTimer matches 60 run item replace entity @s armor.legs with minecraft:iron_leggings
execute as @a at @s run execute if score @s oitcProtectedTimer matches 60 run item replace entity @s armor.feet with minecraft:iron_boots

execute as @a at @s run execute if score @s oitcProtectedTimer matches 1 run clear @s iron_helmet
execute as @a at @s run execute if score @s oitcProtectedTimer matches 1 run clear @s iron_chestplate
execute as @a at @s run execute if score @s oitcProtectedTimer matches 1 run clear @s iron_leggings
execute as @a at @s run execute if score @s oitcProtectedTimer matches 1 run clear @s iron_boots


#game start
execute if score dummy pgPregameTimer matches 600 run gamerule keep_inventory true

execute if score dummy pgPregameTimer matches 600 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy pgPregameTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy pgPregameTimer matches 600 run tellraw @a ["",{"text":"Minigame: One in the Chamber","bold":true,"color":"yellow"},{"text":"\n\n"},{"text":"- One arrow shot, one kill!\n- Get an arrow after each kill, or when you respawn.\n- Players can only have up to one arrow at a time.\n- If you have no arrows left, fight with your sword.\n- Players have 2.5s invulnerability when they respawn.\n- Earn as many kills as possible!","color":"green"}]
execute if score dummy pgPregameTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy pgPregameTimer matches 400 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy pgPregameTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy pgPregameTimer matches 400 run tellraw @a ["",{"text":"Scoring for this minigame (unmultiplied):","bold":true,"color":"green"},{"text":"\n\n"},{"text":"- Each Kill -> 1","color":"red"}]
execute if score dummy pgPregameTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy pgPregameTimer matches 340 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy pgPregameTimer matches 340 run tellraw @a {"text":"The minigame will begin shortly...","color":"red"}

execute if score dummy pgPregameTimer matches 1..1200 run tp @a[team=player1] @e[type=marker,limit=1,tag=respawn1]
execute if score dummy pgPregameTimer matches 1..1200 run tp @a[team=player2] @e[type=marker,limit=1,tag=respawn2]
execute if score dummy pgPregameTimer matches 1..1200 run tp @a[team=player3] @e[type=marker,limit=1,tag=respawn3]
execute if score dummy pgPregameTimer matches 1..1200 run tp @a[team=player4] @e[type=marker,limit=1,tag=respawn4]
execute if score dummy pgPregameTimer matches 300 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy pgPregameTimer matches 200 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 100 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 80 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 60 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy pgPregameTimer matches 40 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy pgPregameTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy pgPregameTimer matches 20 run tellraw @a ["",{"text":"The game will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy pgPregameTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy pgPregameTimer matches 1 run execute as @a[team=!spec] at @s run give @s copper_sword[custom_name=[{"text":"Weak Sword","italic":false,"color":"gold"}],lore=[[{"text":"stabby stabby","italic":false,"color":"gray"}]],attribute_modifiers=[{type:attack_damage,amount:3,slot:mainhand,operation:add_value,id:"1766191531026"},{type:attack_speed,amount:-2.4,slot:mainhand,operation:add_value,id:"1766191531027"}],unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute if score dummy pgPregameTimer matches 1 run execute as @a[team=!spec] at @s run give @s bow[custom_name=[{"text":"Bow","italic":false,"color":"red"}],lore=[[{"text":"pew pew pew","italic":false,"color":"gray"}]],enchantments={power:120},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute if score dummy pgPregameTimer matches 1 run execute as @a[team=!spec] at @s run give @s arrow
execute if score dummy pgPregameTimer matches 1 run execute as @a[team=!spec] at @s run gamerule natural_health_regeneration false
execute if score dummy pgPregameTimer matches 1 run effect give @a regeneration 1000 0 true
execute if score dummy pgPregameTimer matches 2.. run execute as @e[type=marker,tag=respawn1] at @s run setblock ~ ~-1 ~ glass
execute if score dummy pgPregameTimer matches 2.. run execute as @e[type=marker,tag=respawn2] at @s run setblock ~ ~-1 ~ glass
execute if score dummy pgPregameTimer matches 2.. run execute as @e[type=marker,tag=respawn3] at @s run setblock ~ ~-1 ~ glass
execute if score dummy pgPregameTimer matches 2.. run execute as @e[type=marker,tag=respawn4] at @s run setblock ~ ~-1 ~ glass
execute if score dummy pgPregameTimer matches 1 run execute as @e[type=marker,tag=respawn1] at @s run setblock ~ ~-1 ~ air
execute if score dummy pgPregameTimer matches 1 run execute as @e[type=marker,tag=respawn2] at @s run setblock ~ ~-1 ~ air
execute if score dummy pgPregameTimer matches 1 run execute as @e[type=marker,tag=respawn3] at @s run setblock ~ ~-1 ~ air
execute if score dummy pgPregameTimer matches 1 run execute as @e[type=marker,tag=respawn4] at @s run setblock ~ ~-1 ~ air
execute if score dummy pgPregameTimer matches 0 run tellraw @a {"text":"The game has started!","color":"green"}
execute if score dummy pgPregameTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score dummy pgPregameTimer matches 0 run scoreboard players set dummy pgOITCInGame 1
execute if score dummy pgPregameTimer matches 0 run scoreboard players set dummy oitcTimeLeft 6000

#timer
execute if score dummy oitcTimeLeft matches 0.. run scoreboard players remove dummy oitcTimeLeft 1
execute store result bossbar party:oitc value run scoreboard players get dummy oitcTimeLeft

bossbar set party:oitc players @a
bossbar set party:oitc name {"text":"Time Left","bold":true,"color":"green"}
bossbar set party:oitc color green
execute if score dummy pgOITCInGame matches 1 run bossbar set party:oitc visible true
execute unless score dummy pgOITCInGame matches 1 run bossbar set party:oitc visible false
bossbar set party:oitc max 6000


#end seq
execute if score dummy oitcEndSequence matches 0.. run scoreboard players remove dummy oitcEndSequence 1

execute if score dummy oitcTimeLeft matches 0 run scoreboard players set dummy oitcEndSequence 301
execute if score dummy oitcTimeLeft matches 0 run scoreboard players set dummy pgOITCInGame 0

execute if score dummy oitcEndSequence matches 300 run title @a title {"text":"Game Over!","bold":true,"color":"green"}
execute if score dummy oitcEndSequence matches 300 run title @a times 0 100 10
execute if score dummy oitcEndSequence matches 300 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
execute if score dummy oitcEndSequence matches 300 run clear @a
execute if score dummy oitcEndSequence matches 300 run effect give @a resistance 45 4 true
execute if score dummy oitcEndSequence matches 300 run effect give @a regeneration 45 4 true

execute if score dummy oitcEndSequence matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy oitcEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy oitcEndSequence matches 200 run tellraw @a {"text":"All Players' K/D:","bold":true,"color":"light_purple"}
execute if score dummy oitcEndSequence matches 200 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":": ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"oitcKillCount"},"bold":true,"color":"red"},{"text":"/","bold":true,"color":"red"},{"score":{"name":"@s","objective":"oitcDeathCount"},"bold":true,"color":"red"}]
execute if score dummy oitcEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy oitcEndSequence matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy oitcEndSequence matches 100 run tellraw @a {"text":"Next minigame in 5 seconds...","color":"red"}

execute if score dummy oitcEndSequence matches 1 run scoreboard players set dummy pgPregameTimer 610
execute if score dummy oitcEndSequence matches 1 run scoreboard players add dummy partyGameNumber 1
execute if score dummy oitcEndSequence matches 1 run scoreboard players set dummy oitcEndSequence -1






