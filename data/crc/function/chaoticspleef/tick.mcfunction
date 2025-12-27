

#scoreboard vars
scoreboard objectives add csStartTimer dummy
scoreboard objectives add csCurrentRound dummy
scoreboard objectives add csTNTTimer dummy
scoreboard objectives add csChaosTimer dummy
scoreboard objectives add csInRound dummy
# scoreboard objectives add csOnDeath deathCount
scoreboard objectives add csAlivePlayers dummy
scoreboard objectives add csRoundCD dummy
scoreboard objectives add csEndSequence dummy
scoreboard objectives add csRoundsWon dummy
scoreboard objectives add csRandomEvent dummy
scoreboard objectives add csInGame dummy
scoreboard objectives add csCrumbleRandom dummy

#display current score text
team join eventScoresDisp Cu
execute if score dummy bsInGame matches 1.. run team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}

execute if score dummy bsInGame matches 1.. run scoreboard players set Cu mainInfo 9

#display game
team add csDisplay
team modify csDisplay color gold
team join csDisplay Ch
team modify csDisplay suffix {"text":"aotic Spleef","color":"gold"}

team add csDisplayMap
team modify csDisplayMap color yellow
execute if score dummy csInRound matches 1.. run team join csDisplayMap Map:
execute if score dummy csInRound matches 1.. run team modify csDisplayMap suffix {"text":" Isolated Island","color":"yellow"}

#remove score
execute if score dummy tickTimer matches 11 run execute if score dummy csTNTTimer matches 1.. run scoreboard players remove dummy csTNTTimer 1 
execute if score dummy tickTimer matches 11 run execute if score dummy csChaosTimer matches 1.. run scoreboard players remove dummy csChaosTimer 1

execute if score dummy csStartTimer matches -10.. run scoreboard players remove dummy csStartTimer 1
execute if score dummy csRoundCD matches -10.. run scoreboard players remove dummy csRoundCD 1

#in game effects
execute if score dummy csInRound matches 1.. run effect give @a resistance 100 4 true
execute if score dummy csInRound matches 1.. run effect give @a regeneration 100 4 true
execute if score dummy csInRound matches 1.. run effect give @a saturation 100 4 true
execute if score dummy csInRound matches 1.. run effect give @a weakness 50 4 true

execute if score dummy csInRound matches 1.. run effect give @e[type=!player,type=!minecraft:armor_stand,type=!minecraft:marker] speed 5 0 true

#on death
execute if score dummy csInRound matches 1.. run execute as @a[team=!spec,gamemode=adventure] at @s run execute if block ~ ~-0.25 ~ obsidian run scoreboard players remove dummy csAlivePlayers 1
execute if score dummy csInRound matches 1.. run execute as @a[team=!spec,gamemode=adventure] at @s run execute if block ~ ~-0.25 ~ obsidian run tellraw @a ["",{"selector":"@s","bold":true,"color":"red"},{"text":" fell off!","color":"red"}]
execute if score dummy csInRound matches 1.. run execute as @a[team=!spec,gamemode=adventure] at @s run execute if block ~ ~-0.25 ~ obsidian run scoreboard players add @a[team=!spec,distance=0.1..,gamemode=adventure] thisGameScore 2
execute if score dummy csInRound matches 1.. run execute as @a[team=!spec,gamemode=adventure] at @s run execute if block ~ ~-0.25 ~ obsidian run tellraw @a[team=!spec,distance=0.1..,gamemode=adventure] ["",{"text":"+2 Score ","color":"green"},{"text":"(Survival)","color":"aqua"}]
execute if score dummy csInRound matches 1.. run execute as @a[team=!spec,gamemode=adventure] at @s run execute if block ~ ~-0.25 ~ obsidian run gamemode spectator @s
# scoreboard players set @a csOnDeath 0

#display hud
execute if score dummy csInRound matches 1.. run execute if score dummy csTNTTimer matches 1.. run execute as @a at @s run title @s actionbar ["",{"text":"TNT Rain Starts in ","bold":true,"color":"red"},{"score":{"name":"dummy","objective":"csTNTTimer"},"bold":true,"color":"gold"},{"text":" Seconds ","bold":true,"color":"gold"},{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Round: ","bold":true,"color":"dark_aqua"},{"score":{"name":"dummy","objective":"csCurrentRound"},"bold":true,"color":"aqua"},{"text":"/12","bold":true,"color":"aqua"}]
execute if score dummy csInRound matches 1.. run execute unless score dummy csTNTTimer matches 1.. run execute if score dummy csChaosTimer matches 1.. run execute as @a at @s run title @s actionbar ["",{"text":"Total Chaos Starts in","bold":true,"color":"dark_purple"},{"text":" ","bold":true,"color":"red"},{"score":{"name":"dummy","objective":"csChaosTimer"},"bold":true,"color":"light_purple"},{"text":" Seconds ","bold":true,"color":"light_purple"},{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Round: ","bold":true,"color":"dark_aqua"},{"score":{"name":"dummy","objective":"csCurrentRound"},"bold":true,"color":"aqua"},{"text":"/12","bold":true,"color":"aqua"}]
execute if score dummy csInRound matches 1.. run execute unless score dummy csChaosTimer matches 1.. run execute as @a at @s run title @s actionbar ["",{"text":"TOTAL CHAOS ACTIVE!!!","bold":true,"color":"yellow"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"Round: ","bold":true,"color":"dark_aqua"},{"score":{"name":"dummy","objective":"csCurrentRound"},"bold":true,"color":"aqua"},{"text":"/12","bold":true,"color":"aqua"}]

#game start
execute if score dummy csStartTimer matches 600 run gamerule keep_inventory true

execute if score dummy csStartTimer matches 600 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy csStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy csStartTimer matches 600 run tellraw @a ["",{"text":"Welcome to Chaotic Spleef!","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"- Battle it out in 12 rounds of spleef, where many things happen at once!","color":"green"}]
execute if score dummy csStartTimer matches 600 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy csStartTimer matches 540 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy csStartTimer matches 540 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy csStartTimer matches 540 run tellraw @a {"text":"- TNT will rain shortly after each round starts, then mobs will rain shortly after that.\n\n- Each round, a random event will occur! Use it to your advantage...","color":"green"}
execute if score dummy csStartTimer matches 540 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy csStartTimer matches 420 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy csStartTimer matches 420 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy csStartTimer matches 420 run tellraw @a ["",{"text":"Scoring for this game (unmultiplied):","bold":true,"color":"green"},{"text":"\n\n"},{"text":"Outlasting a player in any round - 2","color":"aqua"}]
execute if score dummy csStartTimer matches 420 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy csStartTimer matches 330 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score dummy csStartTimer matches 330 run tellraw @a {"text":"The game will begin shortly...","color":"red"}

execute if score dummy csStartTimer matches 303 run tp @a[team=spec] @e[type=marker,tag=csGameSpawn,limit=1,sort=nearest]
execute if score dummy csStartTimer matches 301 run scoreboard players operation dummy csAlivePlayers = dummy totalPlayers
execute if score dummy csStartTimer matches 301 run scoreboard players add dummy csCurrentRound 1
execute if score dummy csStartTimer matches 301 run gamemode adventure @a[team=!spec]

# -> map reset (defined with rules in guide.txt)
execute if score dummy csStartTimer matches 301 run execute as @e[type=marker,tag=csGameSpawn,limit=1] at @s run clone ~115 ~30 ~15 ~85 ~ ~-15 ~-15 ~ ~-15 

execute if score dummy csStartTimer matches 301 run execute as @a at @s run function chaotic_spleef_ost:play

execute if score dummy csStartTimer matches 301 run effect give @a[team=!spec] invisibility 15 4 true
execute if score dummy csStartTimer matches 301 run effect give @a[team=!spec] weakness 15 4 true
execute if score dummy csStartTimer matches 301 run execute store result score dummy csRandomEvent run random value 1..8
execute if score dummy csStartTimer matches 301 run execute as @e[type=marker,tag=csGameSpawn] at @s run spreadplayers ~ ~ 7 8 true @a[team=!spec]
execute if score dummy csStartTimer matches 300 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"15 seconds.","color":"gold"}]
execute if score dummy csStartTimer matches 300 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 0.5
execute if score dummy csStartTimer matches 200 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"10 seconds.","color":"gold"}]
execute if score dummy csStartTimer matches 100 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"5 seconds.","color":"gold"}]
execute if score dummy csStartTimer matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy csStartTimer matches 80 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"4 seconds.","color":"gold"}]
execute if score dummy csStartTimer matches 80 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy csStartTimer matches 60 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"3 seconds.","color":"gold"}]
execute if score dummy csStartTimer matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy csStartTimer matches 40 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"2 seconds.","color":"gold"}]
execute if score dummy csStartTimer matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy csStartTimer matches 20 run tellraw @a ["",{"text":"The round will begin in ","color":"aqua"},{"text":"1 second.","color":"gold"}]
execute if score dummy csStartTimer matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.4
execute if score dummy csStartTimer matches 1 run scoreboard players set dummy tickTimer 12
execute if score dummy csStartTimer matches 1 run give @a[team=!spec] copper_pickaxe[custom_name=[{"text":"Spleefing Pickaxe","italic":false,"color":"gold"}],enchantment_glint_override=true,enchantments={efficiency:150},attribute_modifiers=[{type:attack_speed,amount:1000,slot:mainhand,operation:add_value,id:"1766278183546"}],can_break=[{blocks:terracotta},{blocks:black_terracotta},{blocks:blue_terracotta},{blocks:brown_terracotta},{blocks:cyan_terracotta},{blocks:gray_terracotta},{blocks:green_terracotta},{blocks:light_blue_terracotta},{blocks:white_terracotta},{blocks:light_gray_terracotta},{blocks:red_terracotta},{blocks:orange_terracotta},{blocks:yellow_terracotta},{blocks:lime_terracotta},{blocks:purple_terracotta},{blocks:magenta_terracotta},{blocks:pink_terracotta}],unbreakable={},tooltip_display={hidden_components:[unbreakable,attribute_modifiers,can_break,can_place_on,enchantments]}]
execute if score dummy csStartTimer matches 1 run give @a[team=!spec] bow[custom_name=[{"text":"Punch Bow","italic":false,"color":"dark_purple"}],enchantment_glint_override=true,enchantments={infinity:1,punch:1},unbreakable={},tooltip_display={hidden_components:[unbreakable]}]
execute if score dummy csStartTimer matches 1 run give @a[team=!spec] arrow 64
execute if score dummy csStartTimer matches 0 run tellraw @a {"text":"The round has started!","color":"green"}
execute if score dummy csStartTimer matches 0 run execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1
execute if score dummy csStartTimer matches 0 run scoreboard players set dummy csInRound 1
execute if score dummy csStartTimer matches 0 run scoreboard players set dummy csTNTTimer 12
execute if score dummy csStartTimer matches 0 run scoreboard players set dummy csChaosTimer 24


#random event
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 1 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"A Warden Spawns!","color":"gold"}]
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 1 run execute as @e[type=marker,tag=csGameSpawn] at @s run summon warden ~ ~11 ~

execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 2 run effect give @a speed 2 3 true
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 2 run execute at @e[type=marker,tag=csGameSpawn] run effect give @e[type=!armor_stand,type=!player,type=!marker,distance=..50] speed 2 3 true
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 2 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"SUPER SONICCCCC!!!!!!!! (including mobs >_<)","color":"gold"}]

execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 3 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"Charged Creeper Chaos!","color":"gold"}]

execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 4 run effect give @a nausea 2 3 true
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 4 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"Drunk Party....","color":"gold"}]

execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 5 run effect give @a slowness 2 2 true
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 5 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"Broken Legs...","color":"gold"}]

execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy tickTimer matches 6 run execute store result score dummy csCrumbleRandom run random value 1..16
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 1 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~1 ~ ~1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 2 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~1 ~ ~ air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 3 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~1 ~ ~-1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 4 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~ ~ ~-1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 5 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~-1 ~ ~-1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 6 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~-1 ~ ~ air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 7 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~-1 ~ ~1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 8 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~ ~ ~1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 9 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~1 ~1 ~1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 10 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~1 ~1 ~ air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 11 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~1 ~1 ~-1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 12 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~ ~1 ~-1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 13 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~-1 ~1 ~-1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 14 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~-1 ~1 ~ air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 15 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~-1 ~1 ~1 air
execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 6 run execute if score dummy csCrumbleRandom matches 16 run execute as @a[team=!spec,gamemode=adventure] at @s run setblock ~ ~1 ~1 air

scoreboard players set dummy csCrumbleRandom -1
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 6 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"Crumble! (Blocks randomly disappear around you)","color":"gold"}]

execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 7 run execute if score dummy csStartTimer matches 0 run give @a[team=!spec] wind_charge 10
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 7 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"Blast off! (Everyone gets 10 Wind Charges!)","color":"gold"}]

execute if score dummy csInRound matches 1 run execute if score dummy csRandomEvent matches 8 run execute if score dummy csStartTimer matches 0 run give @a[team=!spec] chorus_fruit 10
execute if score dummy csStartTimer matches 0 run execute if score dummy csRandomEvent matches 8 run tellraw @a ["",{"text":"[Event] ","bold":true,"color":"red"},{"text":"Let\'s Go Gambling! (Everyone gets 10 Chorus Fruit!)","color":"gold"}]


#tnt spawning
execute if score dummy csTNTTimer matches 0 run execute if score dummy csInRound matches 1.. run execute if score dummy tickTimer matches 11 run function crc:chaoticspleef/tntspawn

#mob spawning
execute if score dummy csChaosTimer matches 0 run execute if score dummy csInRound matches 1.. run execute if score dummy tickTimer matches 11 run function crc:chaoticspleef/mobspawn


#round ending
execute if score dummy csAlivePlayers matches 0..1 run scoreboard players set dummy csRoundCD 101

execute if score dummy csRoundCD matches 101 run scoreboard players set dummy csAlivePlayers -1
execute if score dummy csRoundCD matches 101 run scoreboard players set dummy csInRound 0
execute if score dummy csRoundCD matches 100 run execute at @e[type=marker,tag=csGameSpawn] run kill @e[type=!armor_stand,type=!player,type=!marker,distance=..50]
execute if score dummy csRoundCD matches 100 run clear @a[team=!spec]
execute if score dummy csRoundCD matches 100 run effect clear @a
execute if score dummy csRoundCD matches 100 run effect give @a[team=!spec] speed 5 4 true
execute if score dummy csRoundCD matches 100 run effect give @a[team=!spec] jump_boost 5 4 true
execute if score dummy csRoundCD matches 100 run scoreboard players add @a[team=!spec,gamemode=adventure] csRoundsWon 1
execute if score dummy csRoundCD matches 100 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.2 1
execute if score dummy csRoundCD matches 100 run tellraw @a ["",{"selector":"@a[team=!spec,gamemode=adventure]","bold":true,"color":"aqua"},{"text":" won the round!","color":"green"}]


execute if score dummy csRoundCD matches 1 run execute if score dummy csCurrentRound matches ..11 run scoreboard players set dummy csStartTimer 302
execute if score dummy csRoundCD matches 37 run execute unless score dummy csCurrentRound matches ..11 run scoreboard players set dummy csEndSequence 401


#end seq
execute if score dummy csEndSequence matches -1.. run scoreboard players remove dummy csEndSequence 1

execute if score dummy csEndSequence matches 400 run execute as @a at @s run function chaotic_spleef_ost:stop
execute if score dummy csEndSequence matches 400 run title @a title {"text":"Game Over!","bold":true,"color":"green"}
execute if score dummy csEndSequence matches 400 run title @a times 0 100 10
execute if score dummy csEndSequence matches 400 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1
execute if score dummy csEndSequence matches 400 run clear @a
execute if score dummy csEndSequence matches 400 run gamemode spectator @a
execute if score dummy csEndSequence matches 400 run scoreboard players set dummy csInGame 0

execute if score dummy csEndSequence matches 400 run team modify player1 suffix ""
execute if score dummy csEndSequence matches 400 run team modify player2 suffix ""
execute if score dummy csEndSequence matches 400 run team modify player3 suffix ""
execute if score dummy csEndSequence matches 400 run team modify player4 suffix ""

execute if score dummy csEndSequence matches 300 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy csEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy csEndSequence matches 300 run tellraw @a {"text":"Rounds Won:","bold":true,"color":"dark_purple"}
execute if score dummy csEndSequence matches 300 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" - ","color":"light_purple"},{"score":{"name":"@s","objective":"csRoundsWon"},"color":"light_purple"}]
execute if score dummy csEndSequence matches 300 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy csEndSequence matches 200 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy csEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
execute if score dummy csEndSequence matches 200 run tellraw @a {"text":"Scores this game (unmultiplied):","bold":true,"color":"green"}
execute if score dummy csEndSequence matches 200 run execute as @a[team=!spec] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"aqua"}]
execute if score dummy csEndSequence matches 200 run tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

execute if score dummy csEndSequence matches 100 run execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute if score dummy csEndSequence matches 100 run tellraw @a {"text":"Returning to lobby in 5 seconds...","color":"red"}

execute if score dummy csEndSequence matches 1 run function crc:tolobby




