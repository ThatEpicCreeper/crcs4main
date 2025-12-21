
#scoreboard vars
scoreboard objectives add mainInfo dummy
scoreboard objectives setdisplay sidebar mainInfo
scoreboard objectives modify mainInfo displayname {"text": " Creeper Championship S4 - 1 ","bold":true,"color":"yellow"}
scoreboard players set  mainInfo 15
scoreboard players set - mainInfo 10

scoreboard objectives add gameNumber dummy
scoreboard objectives add inVoting dummy
scoreboard objectives add inLobby dummy
scoreboard objectives add inGame dummy
scoreboard objectives add personalScore dummy
scoreboard objectives add tickTimer dummy
scoreboard objectives add totalPlayers dummy
scoreboard objectives add thisGameScore dummy
scoreboard objectives add playerHealth health
scoreboard objectives modify playerHealth displayname {"text":"\u2665","color":"red"}

#consts
scoreboard objectives add constant dummy
scoreboard players set 0 constant 0
scoreboard players set 1 constant 1
scoreboard players set 2 constant 2
scoreboard players set 3 constant 3
scoreboard players set 4 constant 4
scoreboard players set 5 constant 5
scoreboard players set 6 constant 6
scoreboard players set 7 constant 7
scoreboard players set 8 constant 8
scoreboard players set 9 constant 9
scoreboard players set 10 constant 10
scoreboard players set 11 constant 11
scoreboard players set 12 constant 12

#lobby
execute if score dummy inLobby matches 1.. run effect give @a resistance 30 4 true
execute if score dummy inLobby matches 1.. run effect give @a saturation 30 4 true

#main timer
scoreboard players add dummy tickTimer 1
execute if score dummy tickTimer matches 21.. run scoreboard players set dummy tickTimer 1



#team for display
team add grayDisp
team modify grayDisp color dark_gray
team join grayDisp -
team join grayDisp =

team add aquaDisp
team modify aquaDisp color aqua

team add gameColorDisp
team modify gameColorDisp color aqua
team join gameColorDisp Game

team add finalGameColorDisp
team modify finalGameColorDisp color red
team join finalGameColorDisp Final
team modify finalGameColorDisp suffix {"text":" Game (WTA):","color":"red"}

team add votingDisp
team modify votingDisp color gold
team join votingDisp !
team modify votingDisp prefix {"text":"Voting","color":"gold","bold":true}
team modify votingDisp suffix ["",{"text":" (Game ","color":"gold","bold":false},{"score":{"name":"dummy","objective":"gameNumber"},"color":"gold","bold":false},{"text":"/4)","color":"gold","bold":false}]

team add intermissDisp
team modify intermissDisp color green
team join intermissDisp Intermission/Waiting

team add eventScoresDisp
team modify eventScoresDisp color gold
team join eventScoresDisp Event
execute unless score dummy inGame matches 1 run team modify eventScoresDisp suffix {"text":" Scores:","color":"gold"}

team add channelDisp
team modify channelDisp color yellow
team join channelDisp y
team modify channelDisp suffix {"text":"outube.com/@ThatEpicCreeper","color":"yellow"}



#player teams
team add player1
team modify player1 color light_purple
execute unless score dummy inGame matches 1 run execute as @r[team=player1] at @s run team modify player1 suffix ["",{"text":" - ","color":"#FF89FB"},{"score":{"name":"@s","objective":"personalScore"},"color":"#FF89FB"}]
#execute if score dummy inGame matches 1 run execute as @r[team=player1] at @s run team modify player1 suffix ""
execute if score dummy hrInGame matches 1.. run execute as @r[team=player1] at @s run team modify player1 suffix ["",{"text":" - #","color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"color":"blue"}]
execute if score dummy bsInGame matches 1.. run execute as @r[team=player1] at @s run team modify player1 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy pgInGame matches 1.. run execute as @r[team=player1] at @s run team modify player1 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy csInGame matches 1.. run execute as @r[team=player1] at @s run team modify player1 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]

team add player2
team modify player2 color light_purple
execute unless score dummy inGame matches 1 run execute as @r[team=player2] at @s run team modify player2 suffix ["",{"text":" - ","color":"#FF89FB"},{"score":{"name":"@s","objective":"personalScore"},"color":"#FF89FB"}]
#execute if score dummy inGame matches 1 run execute as @r[team=player2] at @s run team modify player2 suffix ""
execute if score dummy hrInGame matches 1.. run execute as @r[team=player2] at @s run team modify player2 suffix ["",{"text":" - #","color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"color":"blue"}]
execute if score dummy bsInGame matches 1.. run execute as @r[team=player2] at @s run team modify player2 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy pgInGame matches 1.. run execute as @r[team=player2] at @s run team modify player2 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy csInGame matches 1.. run execute as @r[team=player2] at @s run team modify player2 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]

team add player3
team modify player3 color light_purple
execute unless score dummy inGame matches 1 run execute as @r[team=player3] at @s run team modify player3 suffix ["",{"text":" - ","color":"#FF89FB"},{"score":{"name":"@s","objective":"personalScore"},"color":"#FF89FB"}]
#execute if score dummy inGame matches 1 run execute as @r[team=player3] at @s run team modify player3 suffix ""
execute if score dummy hrInGame matches 1.. run execute as @r[team=player3] at @s run team modify player3 suffix ["",{"text":" - #","color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"color":"blue"}]
execute if score dummy bsInGame matches 1.. run execute as @r[team=player3] at @s run team modify player3 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy pgInGame matches 1.. run execute as @r[team=player3] at @s run team modify player3 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy csInGame matches 1.. run execute as @r[team=player3] at @s run team modify player3 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]

team add player4
team modify player4 color light_purple
execute unless score dummy inGame matches 1 run execute as @r[team=player4] at @s run team modify player4 suffix ["",{"text":" - ","color":"#FF89FB"},{"score":{"name":"@s","objective":"personalScore"},"color":"#FF89FB"}]
#execute if score dummy inGame matches 1 run execute as @r[team=player4] at @s run team modify player4 suffix ""
execute if score dummy hrInGame matches 1.. run execute as @r[team=player4] at @s run team modify player4 suffix ["",{"text":" - #","color":"blue"},{"score":{"name":"@s","objective":"hrCurrentPos"},"color":"blue"}]
execute if score dummy bsInGame matches 1.. run execute as @r[team=player4] at @s run team modify player4 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy pgInGame matches 1.. run execute as @r[team=player4] at @s run team modify player4 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]
execute if score dummy csInGame matches 1.. run execute as @r[team=player4] at @s run team modify player4 suffix ["",{"text":" - ","color":"blue"},{"score":{"name":"@s","objective":"thisGameScore"},"color":"blue"}]

team add spec
team modify spec color gray
team modify spec prefix {"text":"[Spectator] ","color":"gray"}



#game and game number display
execute if score dummy gameNumber matches 1 run team modify gameColorDisp suffix ["",{"text":" 1/4 ","color":"aqua"},{"text":"(1.0x):","color":"dark_aqua"}]
execute if score dummy gameNumber matches 2 run team modify gameColorDisp suffix ["",{"text":" 2/4 ","color":"aqua"},{"text":"(1.5x):","color":"dark_aqua"}]
execute if score dummy gameNumber matches 3 run team modify gameColorDisp suffix ["",{"text":" 3/4 ","color":"aqua"},{"text":"(2.0x):","color":"dark_aqua"}]
execute if score dummy gameNumber matches 4 run team modify gameColorDisp suffix ["",{"text":" 4/4 ","color":"aqua"},{"text":"(2.5x):","color":"dark_aqua"}]

execute if score dummy inGame matches 1 run scoreboard players set Game mainInfo 14
execute if score dummy inGame matches 1 run execute unless score dummy gameNumber matches 5 run scoreboard players set Game mainInfo 14
execute if score dummy inGame matches 1 run execute if score dummy gameNumber matches 5 run scoreboard players reset Game mainInfo
execute if score dummy inGame matches 1 run execute if score dummy gameNumber matches 5 run scoreboard players set Final mainInfo 14
execute if score dummy inGame matches 1 run execute unless score dummy gameNumber matches 5 run scoreboard players reset Final mainInfo

execute if score dummy inVoting matches 1 run scoreboard players set ! mainInfo 14
execute unless score dummy inVoting matches 1 run scoreboard players reset ! mainInfo
execute if score dummy inVoting matches 1 run scoreboard players reset Game mainInfo

execute if score dummy inLobby matches 1 run scoreboard players set Intermission/Waiting mainInfo 14
execute unless score dummy inLobby matches 1 run scoreboard players reset Intermission/Waiting mainInfo
execute if score dummy inLobby matches 1 run scoreboard players reset Game mainInfo


#score display
execute if score dummy inGame matches 0 run scoreboard players set Event mainInfo 9
execute unless score dummy inGame matches 0 run scoreboard players reset Event mainInfo

##player scores
execute if score dummy inGame matches 0 run scoreboard players set @a[tag=!spec] mainInfo 8

#show advert
scoreboard players set = mainInfo 7
scoreboard players set y mainInfo 6





