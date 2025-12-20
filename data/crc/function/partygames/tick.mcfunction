
#scoreboard vars
scoreboard objectives add partyGameNumber dummy
scoreboard objectives add pgOITCInGame dummy
scoreboard objectives add pgTNTRunInGame dummy
scoreboard objectives add pgLavaRunInGame dummy
scoreboard objectives add pgPregameTimer dummy


#remove score
execute if score dummy pgPregameTimer matches -1.. run scoreboard players remove dummy pgPregameTimer 1

#set game 
execute if score dummy partyGameNumber matches 1 run function crc:partygames/oitc
execute if score dummy partyGameNumber matches 2 run function crc:partygames/lavarun
execute if score dummy partyGameNumber matches 3 run function crc:partygames/tntrun









