
#scoreboard vars
scoreboard objectives add normalItemRoll dummy
scoreboard objectives add specialItemRoll dummy
scoreboard objectives add itemRolled dummy

scoreboard objectives add useSpeedBoost minecraft.used:minecraft.light_blue_dye
scoreboard objectives add inSpeedBoost dummy
scoreboard objectives add useSpeedBoost2 minecraft.used:minecraft.blue_dye
scoreboard objectives add inSpeedBoost2 dummy
scoreboard objectives add useSlowDart minecraft.used:minecraft.echo_shard
scoreboard objectives add inSlowDart dummy
scoreboard objectives add useBanana minecraft.used:minecraft.yellow_carpet
scoreboard objectives add inBanana dummy
scoreboard objectives add useSlam minecraft.used:minecraft.iron_block
scoreboard objectives add inSlam dummy
scoreboard objectives add useUpdraft minecraft.used:minecraft.white_shulker_box
scoreboard objectives add useAmplify minecraft.used:minecraft.magenta_glazed_terracotta
scoreboard objectives add inAmplify dummy

scoreboard objectives add useBlueMissile minecraft.used:minecraft.blue_candle
scoreboard objectives add inBlueMissile dummy
scoreboard objectives add useLightningRod minecraft.used:minecraft.blaze_rod
scoreboard objectives add inShrink dummy
scoreboard objectives add useBlinding minecraft.used:minecraft.ink_sac


#remove score
execute as @a at @s run execute unless score @s normalItemRoll matches ..-1 run scoreboard players remove @s normalItemRoll 1 
execute as @a at @s run execute unless score @s specialItemRoll matches ..-1 run scoreboard players remove @s specialItemRoll 1 

execute as @a at @s run execute unless score @s inSpeedBoost matches ..-1 run scoreboard players remove @s inSpeedBoost 1 
execute as @a at @s run execute unless score @s inSpeedBoost2 matches ..-1 run scoreboard players remove @s inSpeedBoost2 1 
execute as @a at @s run execute unless score @s inSlowDart matches ..-1 run scoreboard players remove @s inSlowDart 1 
execute as @a at @s run execute unless score @s inBanana matches ..-1 run scoreboard players remove @s inBanana 1 
execute as @a at @s run execute unless score @s inSlam matches ..-1 run scoreboard players remove @s inSlam 1 
execute as @a at @s run execute unless score @s inAmplify matches ..-1 run scoreboard players remove @s inAmplify 1 

execute as @a at @s run execute unless score @s inBlueMissile matches ..-1 run scoreboard players remove @s inBlueMissile 1 
execute as @a at @s run execute unless score @s inShrink matches ..-1 run scoreboard players remove @s inShrink 1 

#-abilities
#mini speed
execute as @a at @s run execute if score @s useSpeedBoost matches 1.. run scoreboard players set @s inSpeedBoost 61
execute as @a at @s run execute if score @s inSpeedBoost matches 1.. run attribute @s minecraft:movement_speed modifier add hrspeedboost 0.3 add_multiplied_base
execute as @a at @s run execute unless score @s inSpeedBoost matches 1.. run attribute @s minecraft:movement_speed modifier remove hrspeedboost
scoreboard players set @a useSpeedBoost 0

#big speed
execute as @a at @s run execute if score @s useSpeedBoost2 matches 1.. run scoreboard players set @s inSpeedBoost2 81
execute as @a at @s run execute if score @s inSpeedBoost2 matches 1.. run attribute @s minecraft:movement_speed modifier add hrspeedboost2 0.67 add_multiplied_base
execute as @a at @s run execute unless score @s inSpeedBoost2 matches 1.. run attribute @s minecraft:movement_speed modifier remove hrspeedboost2
scoreboard players set @a useSpeedBoost2 0

#slow dart
execute as @a at @s run execute if score @s useSlowDart matches 1.. run tag @s add unslowable
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ~ ~ ~ run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^0.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^0.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^1.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^1.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^2.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^2.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^3.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^3.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^4.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^4.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^5.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^5.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^6.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^6.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^7.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^7.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^8.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^8.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^9.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^9.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^10.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^10.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^11.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^11.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^12.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^12.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^13.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^13.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^14.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^14.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^15.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^15.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^16.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^16.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^17.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^17.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^18.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^18.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^19.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^19.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^20.5 run execute as @a[tag=!unslowable,distance=..1.8] at @s run scoreboard players set @s inSlowDart 81
execute as @a at @s run execute if score @s useSlowDart matches 1.. run execute positioned ^ ^ ^20.5 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 4
execute as @a at @s run execute if score @s inSlowDart matches 81 run tellraw @a[tag=unslowable] ["",{"text":"You hit ","color":"gray"},{"selector":"@s","color":"gray"},{"text":" with the slow dart!","color":"gray"}]
execute as @a at @s run execute if score @s inSlowDart matches 81 run tellraw @s {"text":"You were hit with a slow dart! (4s)","color":"red"}
execute as @a at @s run execute if score @s inSlowDart matches 81 run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1
execute as @a at @s run execute if score @s inSlowDart matches 1.. run attribute @s minecraft:movement_speed modifier add hrslowdebuff -0.35 add_multiplied_base
execute as @a at @s run execute unless score @s inSlowDart matches 1.. run attribute @s minecraft:movement_speed modifier remove hrslowdebuff
scoreboard players set @a useSlowDart 0

#banana 
execute as @a at @s run execute if score @s useBanana matches 1.. run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b},PickupDelay:16}
execute as @a at @s run execute if items entity @s container.* minecraft:yellow_dye run scoreboard players set @s inBanana 31
execute as @a at @s run execute if score @s inBanana matches 31 run tellraw @s {"text":"You slipped on a banana! (1.5s)","color":"red"}
execute as @a at @s run execute if score @s inBanana matches 31 run playsound minecraft:entity.slime.hurt master @s ~ ~ ~ 1 1
execute as @a at @s run execute if score @s inBanana matches 1.. run attribute @s minecraft:movement_speed modifier add hrbananadebuff -0.8 add_multiplied_base
execute as @a at @s run execute unless score @s inBanana matches 1.. run attribute @s minecraft:movement_speed modifier remove hrbananadebuff
execute as @a at @s run execute if score @s inBanana matches 1.. run attribute @s minecraft:jump_strength modifier add hrbananadebuffjump -1 add_multiplied_base
execute as @a at @s run execute unless score @s inBanana matches 1.. run attribute @s minecraft:jump_strength modifier remove hrbananadebuffjump
execute as @a at @s run execute if items entity @s container.* minecraft:yellow_dye run clear @s yellow_dye
scoreboard players set @a useBanana 0

#ground slam
execute as @a at @s run execute if score @s useSlam matches 1.. run scoreboard players set @a[team=!spec,distance=0.1..7] inSlam 41
execute as @a at @s run execute if score @s inSlam matches 41 run tellraw @s {"text":"The ground was shaken! (2s)","color":"red"}
execute as @a at @s run execute if score @s inSlam matches 41 run tellraw @a[scores={useSlam=1..}] ["",{"text":"You slammed the ground and stunned ","color":"dark_green"},{"selector":"@s","color":"dark_green"},{"text":"!","color":"dark_green"}]
execute as @a at @s run execute if score @s inSlam matches 41 run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.7 0.5
execute as @a at @s run execute if score @s inSlam matches 1.. run attribute @s minecraft:movement_speed modifier add hrslamdebuff -0.8 add_multiplied_base
execute as @a at @s run execute unless score @s inSlam matches 1.. run attribute @s minecraft:movement_speed modifier remove hrslamdebuff
execute as @a at @s run execute if score @s inSlam matches 1.. run attribute @s minecraft:jump_strength modifier add hrslamdebuffjump -1 add_multiplied_base
execute as @a at @s run execute unless score @s inSlam matches 1.. run attribute @s minecraft:jump_strength modifier remove hrslamdebuffjump
scoreboard players set @a useSlam 0

#updraft
execute as @a at @s run execute if score @s useUpdraft matches 1.. run effect give @s levitation 3 4 true
scoreboard players set @a useUpdraft 0

#amplify
execute as @a at @s run execute if score @s useAmplify matches 1.. run scoreboard players set @s inAmplify 101
execute as @a at @s run execute if score @s inAmplify matches 101 run tellraw @s {"text":"You activated Amplify!","color":"green"}
execute as @a at @s run execute if score @s inAmplify matches 1 run tellraw @s {"text":"Amplify has expired!","color":"red"}
scoreboard players set @a useAmplify 0

#blue missile
execute as @a at @s run execute if score @s useBlueMissile matches 1.. run execute as @a[scores={hrCurrentPos=1}] at @s run particle minecraft:explosion_emitter
execute as @a at @s run execute if score @s useBlueMissile matches 1.. run execute as @a[scores={hrCurrentPos=1}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.7 0.8
execute as @a at @s run execute if score @s useBlueMissile matches 1.. run execute as @a[scores={hrCurrentPos=1}] at @s run tellraw @s {"text":"You were hit by a Blue Missile! (3+2s)","color":"red"}
execute as @a at @s run execute if score @s useBlueMissile matches 1.. run tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" sent a ","color":"dark_red"},{"text":"Blue Missile","bold":true,"color":"blue"},{"text":" to ","color":"dark_red"},{"selector":"@a[scores={hrCurrentPos=1}]","color":"dark_red"},{"text":"!","color":"dark_red"}]
execute as @a at @s run execute if score @s useBlueMissile matches 1.. run execute as @a[scores={hrCurrentPos=1}] at @s run effect give @s blindness 4 0 true
execute as @a at @s run execute if score @s useBlueMissile matches 1.. run execute as @a[scores={hrCurrentPos=1}] at @s run effect give @s slowness 5 1 true
execute as @a at @s run execute if score @s useBlueMissile matches 1.. run execute as @a[scores={hrCurrentPos=1}] at @s run scoreboard players set @s inBlueMissile 61
execute as @a at @s run execute if score @s inBlueMissile matches 1.. run attribute @s minecraft:movement_speed modifier add hrbluemissdebuff -0.8 add_multiplied_base
execute as @a at @s run execute unless score @s inBlueMissile matches 1.. run attribute @s minecraft:movement_speed modifier remove hrbluemissdebuff
execute as @a at @s run execute if score @s inBlueMissile matches 1.. run attribute @s minecraft:jump_strength modifier add hrbluemissdebuffjump -1 add_multiplied_base
execute as @a at @s run execute unless score @s inBlueMissile matches 1.. run attribute @s minecraft:jump_strength modifier remove hrbluemissdebuffjump
scoreboard players set @a useBlueMissile 0

#lightning rod
execute as @a at @s run execute if score @s useLightningRod matches 1.. run execute as @a[distance=0.1..,team=!spec] at @s run scoreboard players set @s inShrink 101
execute as @a at @s run execute if score @s inShrink matches 100 run summon lightning_bolt ~ ~5 ~
execute as @a at @s run execute if score @s inShrink matches 90 run summon lightning_bolt ~ ~5 ~
execute as @a at @s run execute if score @s inShrink matches 101 run tellraw @s {"text":"You were struck by shrinking lightning! (5s)","color":"red"}
execute as @a at @s run execute if score @s inShrink matches 1.. run attribute @s minecraft:movement_speed modifier add hrshrinkdebuff -0.167 add_multiplied_base
execute as @a at @s run execute unless score @s inShrink matches 1.. run attribute @s minecraft:movement_speed modifier remove hrshrinkdebuff
execute as @a at @s run execute if score @s inShrink matches 1.. run attribute @s minecraft:scale modifier add hrshrinkdebuffscale -0.7 add_value
execute as @a at @s run execute unless score @s inShrink matches 1.. run attribute @s minecraft:scale modifier remove hrshrinkdebuffscale
scoreboard players set @a useLightningRod 0

#blinding
execute as @a at @s run execute if score @s useBlinding matches 1.. run execute as @a[distance=0.1..,team=!spec] at @s run effect give @s blindness 5 0 true
execute as @a at @s run execute if score @s useBlinding matches 1.. run execute as @a[distance=0.1..,team=!spec] at @s run tellraw @s {"text":"You were blinded! (5s)","color":"red"}
execute as @a at @s run execute if score @s useBlinding matches 1.. run execute as @a[distance=0.1..,team=!spec] at @s run playsound minecraft:entity.cat.hiss master @s ~ ~ ~ 1 0.5
scoreboard players set @a useBlinding 0



#item roll regular
execute as @a[scores={hudCPCD=19,hrCurrentPos=1..3}] at @s run scoreboard players set @s normalItemRoll 30
execute as @a[scores={normalItemRoll=29}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={normalItemRoll=26}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={normalItemRoll=23}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 2
execute as @a[scores={normalItemRoll=20}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={normalItemRoll=17}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={normalItemRoll=14}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={normalItemRoll=11}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 2
execute as @a[scores={normalItemRoll=8}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={normalItemRoll=5}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={normalItemRoll=5}] at @s run execute store result score @s itemRolled run random value 1..16
execute as @a[scores={normalItemRoll=4}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.7 1.2

execute as @a[scores={hudCPCD=19,hrCurrentPos=4..}] at @s run scoreboard players set @s specialItemRoll 30
execute as @a[scores={specialItemRoll=29}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={specialItemRoll=26}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={specialItemRoll=23}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 2
execute as @a[scores={specialItemRoll=20}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={specialItemRoll=17}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={specialItemRoll=14}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={specialItemRoll=11}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 2
execute as @a[scores={specialItemRoll=8}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.5
execute as @a[scores={specialItemRoll=5}] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1
execute as @a[scores={specialItemRoll=5}] at @s run execute store result score @s itemRolled run random value 1..24
execute as @a[scores={specialItemRoll=4}] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.7 1.2

#rolled item
#execute as @a[scores={itemRolled=1}] at @s run give @s white_shulker_box[custom_name=[{"text":"Updraft (3s)","italic":false,"color":"gray"}],lore=[[{"text":"Right-Click to levitate up!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"minecraft:block.anvil.land"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=1..2}] at @s run give @s light_blue_dye[custom_name=[{"text":"Small Speed Boost (3s)","italic":false,"color":"aqua"}],lore=[[{"text":"Right-Click to use and gain speed!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"minecraft:block.note_block.flute"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=3}] at @s run give @s light_blue_dye[custom_name=[{"text":"Small Speed Boost (3s)","italic":false,"color":"aqua"}],lore=[[{"text":"Right-Click to use and gain speed!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"minecraft:block.note_block.flute"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}] 2
execute as @a[scores={itemRolled=4}] at @s run give @s blue_dye[custom_name=[{"text":"Big Speed Boost (4s)","italic":false,"color":"blue"}],lore=[[{"text":"Right-Click to use and gain speed!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"minecraft:block.note_block.flute"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=5..6}] at @s run give @s echo_shard[custom_name=[{"text":"Slowness Dart (4s) [Aim at Player]","italic":false,"color":"dark_gray"}],lore=[[{"text":"Right-Click to shoot the dart and slow others!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"minecraft:block.fire.extinguish"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=7}] at @s run give @s yellow_carpet[custom_name=[{"text":"Drop Banana","italic":false,"color":"yellow"}],lore=[[{"text":"Right-Click to drop a stunning banana!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"entity.generic.eat"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=8}] at @s run give @s yellow_carpet[custom_name=[{"text":"Drop Banana","italic":false,"color":"yellow"}],lore=[[{"text":"Right-Click to drop a stunning banana!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"entity.generic.eat"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}] 3
execute as @a[scores={itemRolled=9..10}] at @s run give @s iron_block[custom_name=[{"text":"Ground Slam (2s)","italic":false,"color":"dark_green"}],lore=[[{"text":"Right-Click to shake the ground around you!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"minecraft:block.anvil.land"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=11}] at @s run give @s wind_charge[custom_name=[{"text":"Wind Charge (Throw)","italic":false,"color":"white"}],lore=[[{"text":"Right-Click to throw the wind charge!","italic":false,"color":"gray"}]]]
execute as @a[scores={itemRolled=12}] at @s run give @s wind_charge[custom_name=[{"text":"Wind Charge (Throw)","italic":false,"color":"white"}],lore=[[{"text":"Right-Click to throw the wind charge!","italic":false,"color":"gray"}]]] 3
execute as @a[scores={itemRolled=13..14}] at @s run give @s magenta_glazed_terracotta[custom_name=[{"text":"Amplify (5s)","italic":false,"color":"light_purple"}],lore=[[{"text":"Right-Click to buff speed pads!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"entity.generic.eat"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=15..16}] at @s run give @s ender_pearl[custom_name=[{"text":"Ender Pearl (Throw)","italic":false,"color":"dark_aqua"}],lore=[[{"text":"Right-Click to throw the teleporting pearl!","italic":false,"color":"gray"}]]]
execute as @a[scores={itemRolled=17..19}] at @s run give @s blue_candle[custom_name=[{"text":"Send Blue Missile (3+2s)","italic":false,"color":"blue"}],lore=[[{"text":"Right-Click to launch a missile at 1st place!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"entity.generic.explode"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=20..22}] at @s run give @s blaze_rod[custom_name=[{"text":"Shrinking Lightning (5s)","italic":false,"color":"gold"}],lore=[[{"text":"Right-Click to shrink everyone else!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute as @a[scores={itemRolled=23..24}] at @s run give @s ink_sac[custom_name=[{"text":"Blinding Spell (5s)","italic":false,"color":"dark_gray"}],lore=[[{"text":"Right-Click to blind everyone else!","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:none,sound:"minecraft:entity.cat.hiss"},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]

scoreboard players set @a itemRolled 0
tag @a remove unslowable

