clear @a
tag @a remove thTarget
scoreboard players operation dummy thCurrentTurn += 1 constant

execute if score dummy thCurrentTurn matches 1 run tag @a[scores={thTurnOrder=1}] add thTarget
execute if score dummy thCurrentTurn matches 2 run tag @a[scores={thTurnOrder=2}] add thTarget
execute if score dummy thCurrentTurn matches 3 run tag @a[scores={thTurnOrder=3}] add thTarget
execute if score dummy thCurrentTurn matches 4 run tag @a[scores={thTurnOrder=4}] add thTarget

scoreboard players set dummy thRoundTimeLeft 1200

effect give @a[team=!spec] minecraft:invisibility 5 1 true
effect give @a[team=!spec] minecraft:speed 5 0 true
effect give @a[team=!spec] minecraft:resistance 5 1 true
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

tellraw @a[tag=!thTarget] ["",{"text":"The Target is ","color":"gold"},{"selector":"@a[tag=thTarget]","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"gold"},{"text":" Eliminate them with your weapon before the time runs out!","color":"red"}]
tellraw @a[tag=thTarget] ["",{"text":"You are the target! ","bold":true,"color":"red"},{"text":"Hide for the duration of the round, or search for the nether star to skip it!","color":"light_purple"}]

give @a[tag=!thTarget,team=!spec] iron_sword[custom_name=[{"text":"Hunter\'s Knife","italic":false,"color":"red"}],enchantment_glint_override=true,enchantments={unbreaking:1},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
give @a[tag=thTarget] tripwire_hook[custom_name=[{"text":"Chest Key","italic":false,"color":"gold"}],lore=[[{"text":"Hold this to unlock and search chests!","italic":false,"color":"gray"}]],enchantment_glint_override=true,unbreakable={},tooltip_display={hidden_components:[enchantments,unbreakable]}]

tellraw @a {"text":"Invisibility will wear off in 5s.","color":"green"}

title @a times 0 80 10
title @a title {"selector":"@a[tag=thTarget]","color":"red"}
title @a subtitle {"text":"is the new target!","bold":true,"color":"red"}

