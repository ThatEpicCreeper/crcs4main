
tp @a 0 50 0 0 0
spawnpoint @a 0 50 0

tag @s add winner

#winner only

team modify player1 suffix ""
team modify player2 suffix ""
team modify player3 suffix ""
team modify player4 suffix ""

tp @s @e[type=marker,limit=1,tag=winPodium]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.9 0.9
title @a title ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" wins","bold":true,"color":"gold"}]
title @a subtitle {"text":"Creeper Championship!","bold":true,"color":"green"}
title @a times 0 100 10

tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}
tellraw @a {"text":"Final Scores this Event:","bold":true,"color":"green"}
tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"personalScore"},"color":"aqua"},{"text":" WINNER!","bold":true,"color":"yellow"}]
execute as @a[team=!spec,tag=!winner] at @s run tellraw @a ["",{"selector":"@s","bold":true,"color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@s","objective":"personalScore"},"color":"aqua"}]
tellraw @a {"text":"====================","bold":true,"color":"dark_gray"}

###



scoreboard players set @a thisGameScore 0

scoreboard players set dummy inLobby 1
scoreboard players set dummy inVoting 0
scoreboard players set dummy inGame 0
scoreboard players add dummy gameNumber 1
scoreboard players set dummy pgInGame 0
scoreboard players set dummy bbStartTimer -10
scoreboard players set dummy bbInGame 0
scoreboard players set dummy bbInRound 0
scoreboard players set dummy bbTeamOneWins 0
scoreboard players set dummy bbTeamTwoWins 0
scoreboard players set dummy bbTieTimer -10
scoreboard players set dummy bbRoundCD -10

gamemode adventure @a[team=!spec]
tag @a remove hrFinished
tag @a remove hrDNF
tag @a remove bbTeam2
tag @a remove bbTeam1
tag @a remove winner
tag @a remove setFinalist

clear @a
effect clear @a

scoreboard players reset H mainInfo
scoreboard players reset B mainInfo
scoreboard players reset Map: mainInfo
scoreboard players reset Cu mainInfo
scoreboard players reset Pa mainInfo
scoreboard players reset Round: mainInfo
scoreboard players reset Ch mainInfo
scoreboard players reset Bl mainInfo

gamerule fall_damage false
gamerule keep_inventory true
gamerule block_drops false
gamerule natural_health_regeneration true
gamerule mob_drops true
gamerule mob_griefing false
worldborder set 999999
scoreboard objectives setdisplay below_name

execute as @a at @s run function blitz_bombs_ost:stop