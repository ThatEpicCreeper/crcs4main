

#scoreboard vars
scoreboard objectives add finalistCount dummy
scoreboard objectives add bbTeamOnePlayersAlive dummy
scoreboard objectives add bbTeamTwoPlayersAlive dummy
scoreboard objectives add bbStartTimer dummy
scoreboard objectives add bbInGame dummy
scoreboard objectives add bbInRound dummy
scoreboard objectives add bbTeamOneWins dummy
scoreboard objectives add bbTeamTwoWins dummy
scoreboard objectives add bbTieTimer dummy
scoreboard objectives add bbRandomMap dummy
scoreboard objectives add bbOnDeath deathCount
scoreboard objectives add bbRoundCD dummy
scoreboard objectives add bbTNTCount dummy
scoreboard objectives add bbCrystalCount dummy
scoreboard objectives add bbSnowballCount dummy

# execute if score dummy bbInGame matches 1.. run team modify player1 suffix ""
# execute if score dummy bbInGame matches 1.. run team modify player2 suffix ""
# execute if score dummy bbInGame matches 1.. run team modify player3 suffix ""
# execute if score dummy bbInGame matches 1.. run team modify player4 suffix ""

#display game
team add bbDisplay
team modify bbDisplay color gold
team join bbDisplay Bl
team modify bbDisplay suffix {"text":"itz Bombs","color":"gold"}

team add bbDisplayMap
team modify bbDisplayMap color yellow
execute if score dummy bbInGame matches 1.. run team join bbDisplayMap Map:
execute if score dummy bbInGame matches 1.. run team modify bbDisplayMap suffix {"text":" Classic","color":"yellow"}

#inv count
execute as @a at @s run execute store result score @s bbTNTCount run clear @s minecraft:tnt 0
execute as @a at @s run execute store result score @s bbCrystalCount run clear @s minecraft:end_crystal 0
execute as @a at @s run execute store result score @s bbSnowballCount run clear @s minecraft:snowball 0

#effects in game
execute if score dummy bbInGame matches 1.. run effect give @a saturation 20 4 true

execute if score dummy bbInGame matches 1.. run execute as @a at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:command_block{auto:1b,Command:"function crc:blitzbombs/ignite"} replace minecraft:tnt

#remove score
execute if score dummy bbStartTimer matches -10.. run scoreboard players remove dummy bbStartTimer 1
execute if score dummy bbTieTimer matches -10.. run scoreboard players remove dummy bbTieTimer 1
execute if score dummy bbRoundCD matches -10.. run scoreboard players remove dummy bbRoundCD 1

#on death
execute if score dummy bbInRound matches 1.. run execute as @a[tag=bbTeam1,scores={bbOnDeath=1..},gamemode=adventure] at @s run scoreboard players remove dummy bbTeamOnePlayersAlive 1
execute if score dummy bbInRound matches 1.. run execute as @a[tag=bbTeam2,scores={bbOnDeath=1..},gamemode=adventure] at @s run scoreboard players remove dummy bbTeamTwoPlayersAlive 1
execute if score dummy bbInRound matches 1.. run execute as @a[scores={bbOnDeath=1..},gamemode=adventure] at @s run scoreboard players set dummy bbTieTimer 3
execute if score dummy bbInRound matches 1.. run execute as @a[scores={bbOnDeath=1..}] at @s run tp @s @r[distance=0.1..]
execute if score dummy bbInRound matches 1.. run execute as @a[scores={bbOnDeath=1..}] at @s run gamemode spectator @s
scoreboard players set @a bbOnDeath 0


#game start
execute if score dummy bbStartTimer matches 600 run gamerule keep_inventory true

execute if score dummy bbStartTimer matches 600 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bbStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bbStartTimer matches 600 run tellraw @a ["",{"text":"Welcome to Blitz Bombs!","bold":true,"color":"dark_red"},{"text":"\n\n"},{"text":"- Face off in a best of 9 (first to 5) game filled with explosions!","color":"gold"}]
execute if score dummy bbStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bbStartTimer matches 500 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bbStartTimer matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bbStartTimer matches 500 run tellraw @a {"text":"- Make your way through each randomly selected map, and blow up your opponent!\n\n- Be sure not to also blow yourself up in the process.....","color":"gold"}
execute if score dummy bbStartTimer matches 500 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bbStartTimer matches 400 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bbStartTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy bbStartTimer matches 400 run tellraw @a ["",{"text":"Scoring for this game:","bold":true,"color":"green"},{"text":"\n\n"},{"text":"- +1 Point if you survive and kill your opponent.\n- No points are awarded if both players are eliminated at the same time. (within 1 tick)\n","color":"yellow"},{"text":"- First to 5 points will win Creeper Championship!","bold":true,"color":"yellow"}]
execute if score dummy bbStartTimer matches 400 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy bbStartTimer matches 330 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy bbStartTimer matches 330 run tellraw @a {"text":"The game will begin shortly...","color":"red"}

execute if score dummy bbStartTimer matches 303 run tp @a[team=spec] @e[type=marker,tag=bbTeamOneSpawn,limit=1,sort=nearest]

execute if score dummy bbStartTimer matches 301 run execute store result score dummy bbRandomMap run random value 1..5

execute if score dummy bbStartTimer matches 301 run execute if score dummy bbRandomMap matches 1 run execute as @e[type=marker,tag=bbMapCenter] at @s run clone ~10 ~-10 ~10 ~-10 ~-5 ~-10 ~-10 ~ ~-10
execute if score dummy bbStartTimer matches 301 run execute if score dummy bbRandomMap matches 2 run execute as @e[type=marker,tag=bbMapCenter] at @s run clone ~10 ~-20 ~10 ~-10 ~-15 ~-10 ~-10 ~ ~-10
execute if score dummy bbStartTimer matches 301 run execute if score dummy bbRandomMap matches 3 run execute as @e[type=marker,tag=bbMapCenter] at @s run clone ~10 ~-30 ~10 ~-10 ~-25 ~-10 ~-10 ~ ~-10
execute if score dummy bbStartTimer matches 301 run execute if score dummy bbRandomMap matches 4 run execute as @e[type=marker,tag=bbMapCenter] at @s run clone ~10 ~-40 ~10 ~-10 ~-35 ~-10 ~-10 ~ ~-10
execute if score dummy bbStartTimer matches 301 run execute if score dummy bbRandomMap matches 5 run execute as @e[type=marker,tag=bbMapCenter] at @s run clone ~10 ~-50 ~10 ~-10 ~-45 ~-10 ~-10 ~ ~-10

execute if score dummy bbStartTimer matches 301 run execute as @e[type=marker,limit=1,sort=nearest,tag=bbMapCenter] at @s run worldborder center ~ ~
execute if score dummy bbStartTimer matches 301 run worldborder set 50
# execute if score dummy bbStartTimer matches 301 run execute store result score dummy bbTeamOnePlayersAlive run tag @a[tag=bbTeam1] list
# execute if score dummy bbStartTimer matches 301 run execute store result score dummy bbTeamTwoPlayersAlive run tag @a[tag=bbTeam2] list
execute if score dummy bbStartTimer matches 301 run scoreboard players set dummy bbTeamOnePlayersAlive 1
execute if score dummy bbStartTimer matches 301 run scoreboard players set dummy bbTeamTwoPlayersAlive 1
execute if score dummy bbStartTimer matches 301 run gamemode adventure @a[tag=bbTeam1]
execute if score dummy bbStartTimer matches 301 run gamemode adventure @a[tag=bbTeam2]
execute if score dummy bbStartTimer matches 301 run tp @a[tag=bbTeam1] @e[type=marker,tag=bbTeamOneSpawn,limit=1,sort=nearest]
execute if score dummy bbStartTimer matches 301 run tp @a[tag=bbTeam2] @e[type=marker,tag=bbTeamTwoSpawn,limit=1,sort=nearest]
execute if score dummy bbStartTimer matches 301 run effect give @a[team=!spec] weakness 15 4 true

execute if score dummy bbStartTimer matches 300 run effect give @a regeneration 1000 0 true
execute if score dummy bbStartTimer matches 300 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy bbStartTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy bbStartTimer matches 256 run execute as @a at @s run function blitz_bombs_ost:play
execute if score dummy bbStartTimer matches 200 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy bbStartTimer matches 100 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy bbStartTimer matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bbStartTimer matches 80 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy bbStartTimer matches 80 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bbStartTimer matches 60 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy bbStartTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bbStartTimer matches 40 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy bbStartTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy bbStartTimer matches 20 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy bbStartTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4

execute if score dummy bbStartTimer matches 1 run worldborder set 5 83s
execute if score dummy bbStartTimer matches 1 run effect give @a weakness 1000 4 true
execute if score dummy bbStartTimer matches 1 run give @a[gamemode=adventure] shield[custom_name=[{"text":"Shield","bold":true,"italic":false,"color":"aqua"}],damage=300]
execute if score dummy bbStartTimer matches 0 run tellraw @a {"text":"The round has started!","color":"green"}
execute if score dummy bbStartTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1
execute if score dummy bbStartTimer matches 0 run scoreboard players set dummy bbInRound 1

#items
execute if score dummy bbInRound matches 1.. run execute as @a[gamemode=adventure] at @s run execute if score @s bbTNTCount matches ..15 run give @s tnt[custom_name=[{"text":"T","bold":true,"italic":false,"color":"dark_red"},{"text":"ri","bold":true,"italic":false,"color":"red"},{"text":"N","bold":true,"italic":false,"color":"dark_red"},{"text":"itro","bold":true,"italic":false,"color":"red"},{"text":"T","bold":true,"italic":false,"color":"dark_red"},{"text":"oluene","bold":true,"italic":false,"color":"red"}],can_place_on=[{blocks:bedrock},{blocks:obsidian},{blocks:bricks},{blocks:cobblestone},{blocks:oak_planks},{blocks:andesite},{blocks:deepslate}],unbreakable={},tooltip_display={hidden_components:[can_break,can_place_on,unbreakable]}]
execute if score dummy bbInRound matches 1.. run execute as @a[gamemode=adventure] at @s run execute if score @s bbCrystalCount matches ..15 run give @s end_crystal[custom_name=[{"text":"엔드 수정","bold":true,"italic":false,"color":"light_purple"}],can_place_on=[{blocks:bedrock},{blocks:obsidian},{blocks:bricks},{blocks:cobblestone},{blocks:oak_planks},{blocks:andesite},{blocks:deepslate}],unbreakable={},tooltip_display={hidden_components:[can_break,can_place_on,unbreakable]}]
execute if score dummy bbInRound matches 1.. run execute as @a[gamemode=adventure] at @s run execute if score @s bbSnowballCount matches ..15 run give @s snowball[custom_name=[{"text":"boule de neige","bold":true,"italic":false,"color":"white"}],unbreakable={},tooltip_display={hidden_components:[unbreakable]}]


#round ending
execute if score dummy bbInRound matches 1.. run execute if score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamOnePlayersAlive matches 0 run execute if score dummy bbTeamTwoPlayersAlive matches 0 run tellraw @a {"text":"Too close to call! No one gains a point...","bold":true,"color":"gold"}
execute if score dummy bbInRound matches 1.. run execute if score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamOnePlayersAlive matches 0 run execute if score dummy bbTeamTwoPlayersAlive matches 0 run scoreboard players set dummy bbRoundCD 101
execute if score dummy bbInRound matches 1.. run execute unless score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamOnePlayersAlive matches 0 run tellraw @a ["",{"selector":"@a[tag=bbTeam2]","bold":true,"color":"blue"},{"text":" won the round!","color":"blue"}]
execute if score dummy bbInRound matches 1.. run execute unless score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamOnePlayersAlive matches 0 run scoreboard players add dummy bbTeamTwoWins 1 
execute if score dummy bbInRound matches 1.. run execute unless score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamOnePlayersAlive matches 0 run scoreboard players set dummy bbRoundCD 101
execute if score dummy bbInRound matches 1.. run execute unless score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamTwoPlayersAlive matches 0 run tellraw @a ["",{"selector":"@a[tag=bbTeam1]","bold":true,"color":"red"},{"text":" won the round!","color":"red"}]
execute if score dummy bbInRound matches 1.. run execute unless score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamTwoPlayersAlive matches 0 run scoreboard players add dummy bbTeamOneWins 1 
execute if score dummy bbInRound matches 1.. run execute unless score dummy bbTieTimer matches 1.. run execute if score dummy bbTeamTwoPlayersAlive matches 0 run scoreboard players set dummy bbRoundCD 101

execute if score dummy bbRoundCD matches 101 run execute as @a at @s run function blitz_bombs_ost:stop
execute if score dummy bbRoundCD matches 101 run scoreboard players set dummy bbInRound 0
execute if score dummy bbRoundCD matches 100 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.4 0.8
execute if score dummy bbRoundCD matches 100 run clear @a
execute if score dummy bbRoundCD matches 100 run effect clear @a
execute if score dummy bbRoundCD matches 100 run effect give @a[gamemode=adventure] speed 5 3 true
execute if score dummy bbRoundCD matches 100 run effect give @a[gamemode=adventure] jump_boost 5 3 true
execute if score dummy bbRoundCD matches 100 run effect give @a[gamemode=adventure] resistance 5 4 true
execute if score dummy bbRoundCD matches 100 run effect give @a[gamemode=adventure] regeneration 5 4 true

execute if score dummy bbRoundCD matches 1 run scoreboard players set dummy bbStartTimer 302

#game end  (FT5)
execute if score dummy bbRoundCD matches 99 run execute if score dummy bbTeamOneWins matches 5.. run execute as @r[tag=bbTeam1] at @s run function crc:blitzbombs/endevent
execute if score dummy bbRoundCD matches 99 run execute if score dummy bbTeamTwoWins matches 5.. run execute as @r[tag=bbTeam2] at @s run function crc:blitzbombs/endevent
