execute as Pillowprism_ at @s run playsound minecraft:entity.wither.break_block master @a[distance=..100] ~ ~ ~ 100 1.2
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b}]}] shield 1
replaceitem entity @a[scores={shield=1}] weapon.offhand air
give @a[scores={shield=1}] minecraft:shield 1
execute as @a[scores={shield=1}] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 1 75

scoreboard players set @a[scores={shield=1}] shield 0