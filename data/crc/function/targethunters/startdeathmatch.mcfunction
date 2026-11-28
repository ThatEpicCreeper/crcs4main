clear @a
effect clear @a
tag @a add thTarget
scoreboard players set dummy thRoundTimeLeft -10
scoreboard players set dummy thInDeathmatch 1

effect give @a instant_health 1 5 true
effect give @a saturation 2 5 true

give @a[team=!spec] iron_sword[custom_name=[{"text":"Hunter\'s Knife","italic":false,"color":"red"}],enchantment_glint_override=true,enchantments={unbreaking:1},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]

execute as @a at @s run execute if score @s thDMQual matches 0 run gamemode spectator @s
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0.75

title @a times 0 60 10
title @a subtitle {"text":"Watch out...","color":"red"}
title @a title {"text":"Deathmatch!","bold":true,"color":"dark_red"}

effect give @a glowing 10000 1 true
tellraw @a ["",{"text":"Hint: ","color":"aqua"},{"text":"Killing a player will restore all of your health!","color":"green"}]

bossbar set targethunters:timeleft visible false