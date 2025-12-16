
#scoreboard vars
scoreboard objectives add hrGoldSFXCD dummy
scoreboard objectives add hrDiamondSFXCD dummy
scoreboard objectives add hrPurpurSFXCD dummy
scoreboard objectives add hrEmeraldSFXCD dummy
scoreboard objectives add hrCoalSFXCD dummy
scoreboard objectives add hrQuartzSFXCD dummy

scoreboard objectives add hrElytraCD dummy
scoreboard objectives add hrElytraCDA dummy
scoreboard objectives add hrTridentCD dummy
scoreboard objectives add hrTridentCDA dummy

scoreboard objectives add hrBoatCD dummy


execute as @a at @s run execute unless score @s hrGoldSFXCD matches ..-1 run scoreboard players remove @s hrGoldSFXCD 1
execute as @a at @s run execute unless score @s hrDiamondSFXCD matches ..-1 run scoreboard players remove @s hrDiamondSFXCD 1
execute as @a at @s run execute unless score @s hrPurpurSFXCD matches ..-1 run scoreboard players remove @s hrPurpurSFXCD 1
execute as @a at @s run execute unless score @s hrEmeraldSFXCD matches ..-1 run scoreboard players remove @s hrEmeraldSFXCD 1
execute as @a at @s run execute unless score @s hrCoalSFXCD matches ..-1 run scoreboard players remove @s hrCoalSFXCD 1
execute as @a at @s run execute unless score @s hrQuartzSFXCD matches ..-1 run scoreboard players remove @s hrQuartzSFXCD 1

execute as @a at @s run execute unless score @s hrElytraCD matches ..-1 run scoreboard players remove @s hrElytraCD 1
execute as @a at @s run execute unless score @s hrElytraCDA matches ..-1 run scoreboard players remove @s hrElytraCDA 1
execute as @a at @s run execute unless score @s hrTridentCD matches ..-1 run scoreboard players remove @s hrTridentCD 1
execute as @a at @s run execute unless score @s hrTridentCDA matches ..-1 run scoreboard players remove @s hrTridentCDA 1
execute as @a at @s run execute unless score @s hrBoatCD matches ..-1 run scoreboard players remove @s hrBoatCD 1

#pads
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={inAmplify=..0}] at @s run execute if block ~ ~-0.9 ~ gold_block run effect give @s speed 3 1 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={inAmplify=1..}] at @s run execute if block ~ ~-0.9 ~ gold_block run effect give @s speed 3 3 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrGoldSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ gold_block run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrGoldSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ gold_block run scoreboard players set @s hrGoldSFXCD 20

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={inAmplify=..0}] at @s run execute if block ~ ~-0.9 ~ diamond_block run effect give @s speed 3 3 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={inAmplify=1..}] at @s run execute if block ~ ~-0.9 ~ diamond_block run effect give @s speed 3 5 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrDiamondSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ diamond_block run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.8
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrDiamondSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ diamond_block run scoreboard players set @s hrDiamondSFXCD 20

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={inAmplify=..0}] at @s run execute if block ~ ~-0.9 ~ purpur_block run effect give @s speed 3 5 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={inAmplify=1..}] at @s run execute if block ~ ~-0.9 ~ purpur_block run effect give @s speed 3 6 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrPurpurSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ purpur_block run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrPurpurSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ purpur_block run scoreboard players set @s hrPurpurSFXCD 20

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute if block ~ ~-0.9 ~ emerald_block run effect give @s jump_boost 1 6 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrEmeraldSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ emerald_block run playsound minecraft:entity.slime.jump master @s ~ ~ ~ 1 0.9
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrEmeraldSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ emerald_block run scoreboard players set @s hrEmeraldSFXCD 20

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute if block ~ ~-0.9 ~ coal_block run effect give @s slowness 3 1 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrCoalSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ coal_block run playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.5 1.5
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrCoalSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ coal_block run scoreboard players set @s hrCoalSFXCD 20

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute if block ~ ~-0.9 ~ chiseled_quartz_block run effect give @s levitation 2 5 true
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrQuartzSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ chiseled_quartz_block run playsound minecraft:entity.wind_charge.wind_burst master @s ~ ~ ~ 0.8 0.5
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrQuartzSFXCD=..0}] at @s run execute if block ~ ~-0.9 ~ chiseled_quartz_block run scoreboard players set @s hrQuartzSFXCD 20


#givers
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCD=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveElytra,distance=..3,limit=1] run item replace entity @s armor.chest with minecraft:elytra[minecraft:unbreakable={}]
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCD=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveElytra,distance=..3,limit=1] run title @s title ""
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCD=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveElytra,distance=..3,limit=1] run title @s subtitle {"text":"+Elytra","bold":true,"color":"light_purple"}
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCD=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveElytra,distance=..3,limit=1] run scoreboard players set @s hrElytraCD 50
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCD=1}] at @s run title @s subtitle ""

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCDA=49}] at @s run title @s title ""
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCDA=49}] at @s run title @s subtitle {"text":"-Elytra","bold":true,"color":"red"}
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCDA=..0}] at @s run execute unless block ~ ~-0.56 ~ air run execute unless entity @e[team=!spec,type=armor_stand,tag=giveElytra,distance=..3,limit=1] run execute if items entity @s armor.chest minecraft:elytra run scoreboard players set @s hrElytraCDA 50
execute if score dummy hrInGame matches 1.. run execute as @a at @s run execute unless block ~ ~-0.56 ~ air run execute unless entity @e[team=!spec,type=armor_stand,tag=giveElytra,distance=..3,limit=1] run clear @s elytra
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrElytraCDA=1}] at @s run title @s subtitle ""


execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCD=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveTrident,distance=..3,limit=1] run execute unless items entity @s container.* trident run title @s title ""
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCD=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveTrident,distance=..3,limit=1] run execute unless items entity @s container.* trident run title @s subtitle {"text":"+Trident","bold":true,"color":"dark_aqua"}
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCD=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveTrident,distance=..3,limit=1] run execute unless items entity @s container.* trident run scoreboard players set @s hrTridentCD 50
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveTrident,distance=..3,limit=1] run execute unless items entity @s container.* trident run playsound minecraft:item.trident.throw master @s ~ ~ ~ 0.7 1
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveTrident,distance=..3,limit=1] run execute unless items entity @s container.* trident run item replace entity @s container.0 with trident[custom_name=[{"text":"Trident","italic":false,"color":"dark_aqua"}],lore=[[{"text":"Riptide II","italic":false,"color":"light_purple"}]],enchantments={riptide:2},unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,enchantments,unbreakable]}]
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCD=1}] at @s run title @s subtitle ""

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCDA=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=removeTrident,distance=..3,limit=1] run execute if items entity @s container.* trident run title @s title ""
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCDA=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=removeTrident,distance=..3,limit=1] run execute if items entity @s container.* trident run title @s subtitle {"text":"-Trident","bold":true,"color":"red"}
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCDA=..0}] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=removeTrident,distance=..3,limit=1] run execute if items entity @s container.* trident run scoreboard players set @s hrTridentCDA 50
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=removeTrident,distance=..3,limit=1] run execute if items entity @s container.* trident run clear @s trident
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrTridentCDA=1}] at @s run title @s subtitle ""

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute if entity @e[team=!spec,type=armor_stand,tag=giveDolphinGrace,distance=..4,limit=1] run effect give @s minecraft:dolphins_grace 2 0 true


#give boat on ice when not nearby and in region (define region later, hard coded region)
# when not in region, clear boats
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute unless entity @e[type=minecraft:oak_chest_boat,distance=..5] run execute unless items entity @s container.* oak_chest_boat run execute if entity @s run title @s title ""
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute unless entity @e[type=minecraft:oak_chest_boat,distance=..5] run execute unless items entity @s container.* oak_chest_boat run execute if entity @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.7 0.6
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute unless entity @e[type=minecraft:oak_chest_boat,distance=..5] run execute unless items entity @s container.* oak_chest_boat run execute if entity @s run title @s subtitle {"text":"+Boat","bold":true,"color":"gold"}
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute unless entity @e[type=minecraft:oak_chest_boat,distance=..5] run execute unless items entity @s container.* oak_chest_boat run execute if entity @s run scoreboard players set @s hrBoatCD 50
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute unless entity @e[type=minecraft:oak_chest_boat,distance=..5] run execute unless items entity @s container.* oak_chest_boat run execute if entity @s run item replace entity @s container.0 with oak_chest_boat
execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec,scores={hrBoatCD=1}] at @s run title @s subtitle ""
execute if score dummy hrInGame matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:oak_chest_boat"}}]

execute if score dummy hrInGame matches 1.. run execute as @a[team=!spec] at @s run execute unless items entity @s container.0 trident run execute unless items entity @s container.0 oak_chest_boat run item replace entity @s container.0 with gray_stained_glass_pane[custom_name=[{"text":"Reserved Item Slot","italic":false,"color":"dark_gray"}],lore=[[{"text":"Currently no item... please do not move this item!","italic":false,"color":"gray"}],[{"text":"It will be replaced with an item when necessary.","italic":false,"color":"gray"}]]]


