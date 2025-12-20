
#scoreboard vars
scoreboard objectives add partyGameNumber dummy
scoreboard objectives add pgOITCInGame dummy
scoreboard objectives add pgTNTRunInGame dummy
scoreboard objectives add pgLavaRunInGame dummy
scoreboard objectives add pgPregameTimer dummy
scoreboard objectives add pgInGame dummy


#remove score
execute if score dummy pgPregameTimer matches -1.. run scoreboard players remove dummy pgPregameTimer 1

#set game 
execute if score dummy partyGameNumber matches 1 run function crc:partygames/oitc
execute if score dummy partyGameNumber matches 2 run function crc:partygames/tntrun
execute if score dummy partyGameNumber matches 3 run function crc:partygames/lavarun


#show game
execute if score dummy pgInGame matches 1.. run scoreboard players set Pa mainInfo 13
execute if score dummy pgInGame matches 1.. run scoreboard players set Round: mainInfo 12
execute if score dummy pgInGame matches 1.. run team modify eventScoresDisp suffix {"text":"rrent Scores:","color":"gold"}
execute if score dummy pgInGame matches 1.. run scoreboard players set Cu mainInfo 9

#display game
team add pgDisplay
team modify pgDisplay color gold
team join pgDisplay Pa
team modify pgDisplay suffix {"text":"rty Arena","color":"gold"}

team add pgDisplayGame
team modify pgDisplayGame color yellow
team join pgDisplayGame Round:
execute if score dummy partyGameNumber matches 1 run team modify pgDisplayGame suffix {"text":" One in the Chamber","color":"yellow"}
execute if score dummy partyGameNumber matches 2 run team modify pgDisplayGame suffix {"text":" TNT Run","color":"yellow"}
execute if score dummy partyGameNumber matches 3 run team modify pgDisplayGame suffix {"text":" Lava Run","color":"yellow"}








