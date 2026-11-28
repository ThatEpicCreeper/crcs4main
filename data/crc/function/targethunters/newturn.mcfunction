clear @a
tag @a remove thTarget
scoreboard players operation dummy thCurrentTurn += 1 constant

function crc:targethunters/randomisechests

execute if score dummy thCurrentTurn matches 1 run tag @a[scores={thTurnOrder=1}] add thTarget
execute if score dummy thCurrentTurn matches 2 run tag @a[scores={thTurnOrder=2}] add thTarget
execute if score dummy thCurrentTurn matches 3 run tag @a[scores={thTurnOrder=3}] add thTarget
execute if score dummy thCurrentTurn matches 4 run tag @a[scores={thTurnOrder=4}] add thTarget

scoreboard players set dummy thRoundTimeLeft 1200

effect give @a[team=!spec] minecraft:invisibility 5 1 true
effect give @a[team=!spec] minecraft:speed 5 0 true
effect give @a[team=!spec] minecraft:resistance 5 1 true
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

effect give @a regeneration 1 2 true
effect give @a instant_health 1 5 true
effect give @a saturation 1 5 true

tellraw @a[tag=!thTarget] ["",{"text":"The Target is ","color":"gold"},{"selector":"@a[tag=thTarget]","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"gold"},{"text":" Eliminate them with your weapon before the time runs out!","color":"red"}]
tellraw @a[tag=thTarget] ["",{"text":"You are the target! ","bold":true,"color":"red"},{"text":"Hide for the duration of the round, or search for the nether star to skip it!","color":"light_purple"}]

give @a[tag=!thTarget,team=!spec] iron_sword[custom_name=[{"text":"Hunter\'s Knife","italic":false,"color":"red"}],enchantment_glint_override=true,enchantments={unbreaking:1},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
give @a[tag=thTarget] tripwire_hook[custom_name=[{"text":"Chest Key","italic":false,"color":"gold"}],lore=[[{"text":"Hold this to unlock and search chests!","italic":false,"color":"gray"}]],enchantment_glint_override=true,unbreakable={},tooltip_display={hidden_components:[enchantments,unbreakable]}]

give @a[tag=thTarget] copper_chest[custom_name=[{"text":"Reveal Chest Locations (12s)","italic":false,"color":"green"}],lore=[[{"text":"Makes chests around the map glow!","italic":false,"color":"gray"}]],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.1}]
give @a[tag=!thTarget,team=!spec] target[custom_name=[{"text":"Eagle Eyes (3s)","italic":false,"color":"red"}],lore=[[{"text":"Reveal the target with glowing!","italic":false,"color":"gray"}]],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:0.1}]

tellraw @a {"text":"Invisibility will wear off in 5s.","color":"green"}

title @a times 0 80 10
title @a title {"selector":"@a[tag=thTarget]","color":"red"}
title @a subtitle {"text":"is the new target!","bold":true,"color":"red"}

bossbar set targethunters:timeleft visible true

