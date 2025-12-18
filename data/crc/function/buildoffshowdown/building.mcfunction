
#scoreboard vars
scoreboard objectives add playerPitch dummy
scoreboard objectives add playerYaw dummy
scoreboard objectives add bsBuildWall minecraft.used:minecraft.bricks
scoreboard objectives add bsBuildFloorRoof minecraft.used:minecraft.brick_slab
scoreboard objectives add bsBuildStairs minecraft.used:minecraft.brick_stairs
scoreboard objectives add bsBricksCount dummy
scoreboard objectives add bsSlabsCount dummy
scoreboard objectives add bsStairsCount dummy
scoreboard objectives add bsBrickCount dummy
scoreboard objectives add bsCopperPickaxeCount dummy


#store item count
execute as @a at @s run execute store result score @s bsBricksCount run clear @s minecraft:bricks 0
execute as @a at @s run execute store result score @s bsSlabsCount run clear @s minecraft:brick_slab 0
execute as @a at @s run execute store result score @s bsStairsCount run clear @s minecraft:brick_stairs 0
execute as @a at @s run execute store result score @s bsBrickCount run clear @s minecraft:brick 0
execute as @a at @s run execute store result score @s bsCopperPickaxeCount run clear @s minecraft:copper_pickaxe 0

#materials
execute as @a[scores={bsBrickCount=1..}] at @s run scoreboard players add @s bsBuildsLeft 5
execute as @a[scores={bsBrickCount=1..}] at @s run tellraw @s {"text":"You gained +5 Builds!","color":"light_purple"}
execute as @a[scores={bsBrickCount=1..}] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 2
execute as @a[scores={bsBrickCount=1..}] at @s run clear @s brick 1

#get pitch and yaw
execute as @a at @s run execute store result score @s playerYaw run data get entity @s Rotation[0]
execute as @a at @s run execute store result score @s playerPitch run data get entity @s Rotation[1]

#building wall
execute as @a[scores={bsBuildsLeft=1..,bsBuildWall=1..,playerYaw=-45..44}] at @s run fill ~2 ~ ~1.1 ~-2 ~3 ~1.1 bricks replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildWall=1..,playerYaw=45..134}] at @s run fill ~-1.1 ~ ~2 ~-1.1 ~3 ~-2 bricks replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildWall=1..,playerYaw=135..180}] at @s run fill ~-2 ~ ~-1.1 ~2 ~3 ~-1.1 bricks replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildWall=1..,playerYaw=-180..-135}] at @s run fill ~-2 ~ ~-1.1 ~2 ~3 ~-1.1 bricks replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildWall=1..,playerYaw=-134..-46}] at @s run fill ~1.1 ~ ~-2 ~1.1 ~3 ~2 bricks replace air
execute as @a[scores={bsBuildsLeft=..0,bsBuildWall=1..}] at @s run tellraw @s {"text":"You have no builds remaining!","color":"red"}
execute as @a[scores={bsBuildsLeft=..0,bsBuildWall=1..}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.8 0.5
execute as @a[scores={bsBuildsLeft=1..,bsBuildWall=1..}] at @s run scoreboard players add @s bsBuildsPlaced 1
execute as @a[scores={bsBuildsLeft=1..,bsBuildWall=1..}] at @s run scoreboard players remove @s bsBuildsLeft 1
scoreboard players set @a bsBuildWall 0

#building floor/roof
execute as @a[scores={bsBuildsLeft=1..,bsBuildFloorRoof=1..,playerPitch=-90..-1}] at @s run fill ~1 ~3 ~1 ~-1 ~3 ~-1 bricks replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildFloorRoof=1..,playerPitch=0..90}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 bricks replace air
execute as @a[scores={bsBuildsLeft=..0,bsBuildFloorRoof=1..}] at @s run tellraw @s {"text":"You have no builds remaining!","color":"red"}
execute as @a[scores={bsBuildsLeft=..0,bsBuildFloorRoof=1..}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.8 0.5
execute as @a[scores={bsBuildsLeft=1..,bsBuildFloorRoof=1..}] at @s run scoreboard players add @s bsBuildsPlaced 1
execute as @a[scores={bsBuildsLeft=1..,bsBuildFloorRoof=1..}] at @s run scoreboard players remove @s bsBuildsLeft 1
scoreboard players set @a bsBuildFloorRoof 0

#building stairs
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-45..44}] at @s run fill ~1 ~ ~1 ~-1 ~ ~1 brick_stairs[facing=south] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-45..44}] at @s run fill ~1 ~1 ~2 ~-1 ~1 ~2 brick_stairs[facing=south] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-45..44}] at @s run fill ~1 ~2 ~3 ~-1 ~2 ~3 brick_stairs[facing=south] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=45..134}] at @s run fill ~-1 ~ ~1 ~-1 ~ ~-1 brick_stairs[facing=west] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=45..134}] at @s run fill ~-2 ~1 ~1 ~-2 ~1 ~-1 brick_stairs[facing=west] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=45..134}] at @s run fill ~-3 ~2 ~1 ~-3 ~2 ~-1 brick_stairs[facing=west] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=135..180}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~-1 brick_stairs[facing=north] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=135..180}] at @s run fill ~-1 ~1 ~-2 ~1 ~1 ~-2 brick_stairs[facing=north] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=135..180}] at @s run fill ~-1 ~2 ~-3 ~1 ~2 ~-3 brick_stairs[facing=north] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-180..-135}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~-1 brick_stairs[facing=north] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-180..-135}] at @s run fill ~-1 ~1 ~-2 ~1 ~1 ~-2 brick_stairs[facing=north] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-180..-135}] at @s run fill ~-1 ~2 ~-3 ~1 ~2 ~-3 brick_stairs[facing=north] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-134..-46}] at @s run fill ~1 ~ ~-1 ~1 ~ ~1 brick_stairs[facing=east] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-134..-46}] at @s run fill ~2 ~1 ~-1 ~2 ~1 ~1 brick_stairs[facing=east] replace air
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..,playerYaw=-134..-46}] at @s run fill ~3 ~2 ~-1 ~3 ~2 ~1 brick_stairs[facing=east] replace air
execute as @a[scores={bsBuildsLeft=..0,bsBuildStairs=1..}] at @s run tellraw @s {"text":"You have no builds remaining!","color":"red"}
execute as @a[scores={bsBuildsLeft=..0,bsBuildStairs=1..}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.8 0.5
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..}] at @s run scoreboard players add @s bsBuildsPlaced 1
execute as @a[scores={bsBuildsLeft=1..,bsBuildStairs=1..}] at @s run scoreboard players remove @s bsBuildsLeft 1
scoreboard players set @a[scores={bsBuildStairs=1..}] bsBuildStairs 0


#give items
execute if score dummy bsInGame matches 1.. run execute as @a[team=!spec] at @s run execute if score @s bsCopperPickaxeCount matches ..0 run give @s copper_pickaxe[custom_name=[{"text":"Brick Breaker","italic":false,"color":"red"}],lore=[[{"text":"Destroy the bricks!","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:3},can_break=[{blocks:brick_slab},{blocks:bricks},{blocks:brick_stairs}],unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute if score dummy bsInGame matches 1.. run execute as @a[team=!spec] at @s run execute if score @s bsBricksCount matches ..66 run give @s bricks[custom_name=[{"text":"Build Wall ","italic":false,"color":"gold"},{"text":"(Right-Click)","italic":false,"color":"dark_gray"}],lore=[[{"text":"Build a wall in front of you!","italic":false,"color":"gray"}],[{"text":"\"We need to build a wall\" - a politician, probably","italic":false,"color":"gray"}],[{"text":"Why are you reading this?","italic":false,"color":"dark_gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:block,sound:"minecraft:block.wood.place"},unbreakable={},max_stack_size=99,tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute if score dummy bsInGame matches 1.. run execute as @a[team=!spec] at @s run execute if score @s bsSlabsCount matches ..66 run give @s brick_slab[custom_name=[{"text":"Build Floor/Roof ","italic":false,"color":"gold"},{"text":"(Right-Click)","italic":false,"color":"dark_gray"}],lore=[[{"text":"Build a floor or roof! ","italic":false,"color":"gray"}],[{"text":"(Look down to build floor, look up to build roof)","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:block,sound:"minecraft:block.wood.place"},unbreakable={},max_stack_size=99,tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]
execute if score dummy bsInGame matches 1.. run execute as @a[team=!spec] at @s run execute if score @s bsStairsCount matches ..66 run give @s brick_stairs[custom_name=[{"text":"Build Stairs ","italic":false,"color":"gold"},{"text":"(Right-Click)","italic":false,"color":"dark_gray"}],lore=[[{"text":"Build stairs in front of you! ","italic":false,"color":"gray"}]],food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:0,animation:block,sound:"minecraft:block.wood.place"},unbreakable={},max_stack_size=99,tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,enchantments,unbreakable]}]


execute if score dummy bsInGame matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:bricks"}}]
execute if score dummy bsInGame matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:brick_slab"}}]
execute if score dummy bsInGame matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:brick_stairs"}}]
execute if score dummy bsInGame matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:copper_pickaxe"}}]

