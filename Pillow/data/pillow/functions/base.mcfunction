effect give Pillowprism_ minecraft:night_vision 1000000 0 true
effect give Pillowprism_ minecraft:saturation 1000000 0 true
scoreboard players add $exptime asset 1
execute if score $exptime asset >= $expmax asset run xp add @a 10 points
execute if score $exptime asset >= $expmax asset run scoreboard players set $exptime asset 0

xp add @a[scores={leveldown=1..}] -1 levels
execute if entity @a[scores={leveldown=1..}] run execute as @a at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2
execute if entity @a[scores={leveldown=1..}] run tellraw @a {"text":"누군가가 1 레벨을 헌납했습니다!","color":"#22FF22"}
scoreboard players remove @a[scores={leveldown=1..}] leveldown 1

execute as @a[scores={deathfor=1..}] at @s run attribute @s minecraft:generic.attack_speed base set 4
execute if entity @a[scores={deathfor=1..},name=Pillowprism_] run setblock 8 71 1 redstone_block
scoreboard players set @a[scores={deathfor=1..}] deathfor 0

recipe give @a pillow:chest
recipe give @a pillow:enchanted_golden_apple
recipe give @a pillow:experience_bottle
recipe give @a pillow:structure_block
recipe give @a pillow:end_stone
recipe give @a pillow:command_block

execute store result score Pillowprism_ armor run attribute Pillowprism_ minecraft:generic.armor base get