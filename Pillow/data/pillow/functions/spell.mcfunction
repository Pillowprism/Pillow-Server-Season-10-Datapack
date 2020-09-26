bossbar set minecraft:creeperdropcast players @a
execute store result bossbar minecraft:creeperdropcast max run scoreboard players get $creeperdroptime spell
execute store result bossbar minecraft:creeperdropcast value run scoreboard players get $creeperdrop spell
execute if score $creeperdrop spell > $zero asset run scoreboard players add $creeperdrop spell 1
execute if score $creeperdrop spell > $zero asset run bossbar set minecraft:creeperdropcast visible true
execute unless score $creeperdrop spell > $zero asset run bossbar set minecraft:creeperdropcast visible false
execute if score $creeperdrop spell > $creeperdroptime spell run function pillow:spell_creeperdrop
execute if score $creeperdrop spell > $creeperdroptime spell run scoreboard players set $creeperdrop spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:gunpowder",Slot:-106b,tag:{spe:1}}]}] holding 1
replaceitem entity @a[scores={holding=1}] weapon.offhand air
give @a[scores={holding=1}] minecraft:gunpowder{display:{Name:'{"text":"크리퍼 떨구기","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=1}] run scoreboard players set $creeperdrop spell 1
execute if entity @a[scores={holding=1}] as @a[scores={holding=1}] at @s run particle minecraft:smoke ~ ~3 ~ 3 1.5 3 0.1 300


execute store result score Pillowprism_ asset run data get entity Pillowprism_ AbsorptionAmount
execute if score Pillowprism_ asset matches 0 run effect clear Pillowprism_ minecraft:absorption
bossbar set minecraft:shield players @a
execute store result bossbar minecraft:shield value run scoreboard players get Pillowprism_ asset
execute if score Pillowprism_ asset > $zero asset run bossbar set minecraft:shield visible true
execute unless score Pillowprism_ asset > $zero asset run bossbar set minecraft:shield visible false
bossbar set minecraft:shield name ["",{"text":"보호막 - ","color":"#DDDD88"},{"score":{"name":"Pillowprism_","objective":"asset"},"color":"#FFFF22"}]

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:yellow_dye",Slot:-106b,tag:{spe:1}}]}] holding 2
replaceitem entity @a[scores={holding=2}] weapon.offhand air
give @a[scores={holding=2}] minecraft:yellow_dye{display:{Name:'{"text":"보호막","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=2}] run function pillow:spell_shield


bossbar set minecraft:levcast players @a
execute store result bossbar minecraft:levcast max run scoreboard players get $levtime spell
execute store result bossbar minecraft:levcast value run scoreboard players get $lev spell
execute if score $lev spell > $zero asset run scoreboard players add $lev spell 1
execute if score $lev spell > $zero asset run bossbar set minecraft:levcast visible true
execute if score $lev spell > $zero asset run execute as Pillowprism_ at Pillowprism_ run particle minecraft:dust 0.5 0.5 1 1 ~ ~0.2 ~ 2 0 2 0 80
execute unless score $lev spell > $zero asset run bossbar set minecraft:levcast visible false
execute if score $lev spell > $levtime spell run function pillow:spell_lev
execute if score $lev spell > $levtime spell run scoreboard players set $lev spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:packed_ice",Slot:-106b,tag:{spe:1}}]}] holding 3
replaceitem entity @a[scores={holding=3}] weapon.offhand air
give @a[scores={holding=3}] minecraft:packed_ice{display:{Name:'{"text":"공중 부양","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=3}] run scoreboard players set $lev spell 1


bossbar set minecraft:killcast players @a
execute store result bossbar minecraft:killcast max run scoreboard players get $killtime spell
execute store result bossbar minecraft:killcast value run scoreboard players get $kill spell
execute if score $kill spell > $zero asset run scoreboard players add $kill spell 1
execute if score $kill spell > $zero asset run bossbar set minecraft:killcast visible true
execute if score $kill spell > $zero asset run execute as Pillowprism_ at Pillowprism_ run particle minecraft:dust 0.1 0.1 0.1 1 ~ ~0.2 ~ 5 0 5 0 20
execute unless score $kill spell > $zero asset run bossbar set minecraft:killcast visible false
execute if score $kill spell > $killtime spell run function pillow:spell_kill
execute if score $kill spell > $killtime spell run scoreboard players set $kill spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:black_dye",Slot:-106b,tag:{spe:1}}]}] holding 4
replaceitem entity @a[scores={holding=4}] weapon.offhand air
give @a[scores={holding=4}] minecraft:black_dye{display:{Name:'{"text":"랜덤킬","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=4}] run scoreboard players set $kill spell 1
execute if entity @a[scores={holding=4}] as @a[scores={holding=4}] at @s run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 3 1 3 10 1500


bossbar set minecraft:powerdropcast players @a
execute store result bossbar minecraft:powerdropcast max run scoreboard players get $powerdroptime spell
execute store result bossbar minecraft:powerdropcast value run scoreboard players get $powerdrop spell
execute if score $powerdrop spell > $zero asset run scoreboard players add $powerdrop spell 1
execute if score $powerdrop spell > $zero asset run bossbar set minecraft:powerdropcast visible true
execute unless score $powerdrop spell > $zero asset run bossbar set minecraft:powerdropcast visible false
execute if score $powerdrop spell > $powerdroptime spell run function pillow:spell_powerdrop
execute if score $powerdrop spell > $powerdroptime spell run scoreboard players set $powerdrop spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:tnt",Slot:-106b,tag:{spe:1}}]}] holding 5
replaceitem entity @a[scores={holding=5}] weapon.offhand air
give @a[scores={holding=5}] minecraft:tnt{display:{Name:'{"text":"충전된 크리퍼 떨구기","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=5}] run scoreboard players set $powerdrop spell 1
execute if entity @a[scores={holding=5}] as @a[scores={holding=5}] at @s run particle minecraft:smoke ~ ~3 ~ 4 1.5 4 0.1 600
execute if entity @a[scores={holding=5}] as @a[scores={holding=5}] at @s run particle minecraft:falling_dust black_concrete ~ ~3 ~ 4 1.5 4 0.1 400


bossbar set minecraft:disarmcast players @a
execute store result bossbar minecraft:disarmcast max run scoreboard players get $disarmtime spell
execute store result bossbar minecraft:disarmcast value run scoreboard players get $disarm spell
execute if score $disarm spell > $zero asset run scoreboard players add $disarm spell 1
execute if score $disarm spell > $zero asset run bossbar set minecraft:disarmcast visible true
execute unless score $disarm spell > $zero asset run bossbar set minecraft:disarmcast visible false
execute if score $disarm spell > $disarmtime spell run function pillow:spell_disarm
execute if score $disarm spell > $disarmtime spell run scoreboard players set $disarm spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{spe:1}}]}] holding 6
replaceitem entity @a[scores={holding=6}] weapon.offhand air
give @a[scores={holding=6}] minecraft:shield{display:{Name:'{"text":"방패 해제","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=6}] run scoreboard players set $disarm spell 1
execute if entity @a[scores={holding=6}] as @a[scores={holding=6}] at @s run particle minecraft:happy_villager ~ ~3 ~ 2 1.5 2 0 100


bossbar set minecraft:flyupcast players @a
execute store result bossbar minecraft:flyupcast max run scoreboard players get $flyuptime spell
execute store result bossbar minecraft:flyupcast value run scoreboard players get $flyup spell
execute if score $flyup spell > $zero asset run scoreboard players add $flyup spell 1
execute if score $flyup spell > $zero asset run bossbar set minecraft:flyupcast visible true
execute unless score $flyup spell > $zero asset run bossbar set minecraft:flyupcast visible false
execute if score $flyup spell > $flyuptime spell run function pillow:spell_flyup
execute if score $flyup spell > $flyuptime spell run scoreboard players set $flyup spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:feather",Slot:-106b,tag:{spe:1}}]}] holding 7
replaceitem entity @a[scores={holding=7}] weapon.offhand air
give @a[scores={holding=7}] minecraft:feather{display:{Name:'{"text":"띄우기","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=7}] run scoreboard players set $flyup spell 1


bossbar set minecraft:arrowcast players @a
execute store result bossbar minecraft:arrowcast max run scoreboard players get $arrowtime spell
execute store result bossbar minecraft:arrowcast value run scoreboard players get $arrow spell
execute if score $arrow spell > $zero asset run execute as Pillowprism_ at Pillowprism_ run kill @e[type=arrow,distance=..10]
execute if score $arrow spell > $zero asset run scoreboard players remove $arrow spell 1
execute if score $arrow spell > $zero asset run bossbar set minecraft:arrowcast visible true
execute unless score $arrow spell > $zero asset run bossbar set minecraft:arrowcast visible false

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:arrow",Slot:-106b,tag:{spe:1}}]}] holding 8
replaceitem entity @a[scores={holding=8}] weapon.offhand air
give @a[scores={holding=8}] minecraft:arrow{display:{Name:'{"text":"화살 제한","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=8}] run scoreboard players operation $arrow spell = $arrowtime spell


bossbar set minecraft:attackcast players @a
execute store result bossbar minecraft:attackcast max run scoreboard players get $attacktime spell
execute store result bossbar minecraft:attackcast value run scoreboard players get $attack spell
execute if score $attack spell > $zero asset run execute as Pillowprism_ at Pillowprism_ run execute as @a[distance=..100,name=!Pillowprism_] run attribute @s minecraft:generic.attack_speed base set 2.4
execute if score $attack spell > $zero asset run scoreboard players remove $attack spell 1
execute if score $attack spell > $zero asset run bossbar set minecraft:attackcast visible true
execute if score $attack spell = $two asset run execute as @a[name=!Pillowprism_] at @s run attribute @s minecraft:generic.attack_speed base set 4
execute unless score $attack spell > $zero asset run bossbar set minecraft:attackcast visible false

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:stone_sword",Slot:-106b,tag:{spe:1}}]}] holding 9
replaceitem entity @a[scores={holding=9}] weapon.offhand air
give @a[scores={holding=9}] minecraft:stone_sword{display:{Name:'{"text":"공격 제한","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=9}] run scoreboard players operation $attack spell = $attacktime spell


bossbar set minecraft:piglinspawncast players @a
execute store result bossbar minecraft:piglinspawncast max run scoreboard players get $piglinspawntime spell
execute store result bossbar minecraft:piglinspawncast value run scoreboard players get $piglinspawn spell
execute if score $piglinspawn spell > $zero asset run scoreboard players add $piglinspawn spell 1
execute if score $piglinspawn spell > $zero asset run bossbar set minecraft:piglinspawncast visible true
execute unless score $piglinspawn spell > $zero asset run bossbar set minecraft:piglinspawncast visible false
execute if score $piglinspawn spell > $piglinspawntime spell run function pillow:spell_piglinspawn
execute if score $piglinspawn spell > $piglinspawntime spell run scoreboard players set $piglinspawn spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:porkchop",Slot:-106b,tag:{spe:1}}]}] holding 10
replaceitem entity @a[scores={holding=10}] weapon.offhand air
give @a[scores={holding=10}] minecraft:porkchop{display:{Name:'{"text":"돼지 소환","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=10}] run scoreboard players set $piglinspawn spell 1


bossbar set minecraft:firecast players @a
execute store result bossbar minecraft:firecast max run scoreboard players get $firetime spell
execute store result bossbar minecraft:firecast value run scoreboard players get $fire spell
execute if score $fire spell > $zero asset run scoreboard players add $fire spell 1
execute if score $fire spell > $zero asset run bossbar set minecraft:firecast visible true
execute unless score $fire spell > $zero asset run bossbar set minecraft:firecast visible false
execute if score $fire spell > $firetime spell run function pillow:spell_fire
execute if score $fire spell > $firetime spell run scoreboard players set $fire spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:campfire",Slot:-106b,tag:{spe:1}}]}] holding 11
replaceitem entity @a[scores={holding=11}] weapon.offhand air
give @a[scores={holding=11}] minecraft:campfire{display:{Name:'{"text":"불","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=11}] run scoreboard players set $fire spell 1


bossbar set minecraft:phasecast players @a
execute store result bossbar minecraft:phasecast max run scoreboard players get $phasetime spell
execute store result bossbar minecraft:phasecast value run scoreboard players get $phase spell
execute if score $phase spell > $zero asset run scoreboard players add $phase spell 1
execute if score $phase spell > $zero asset run bossbar set minecraft:phasecast visible true
execute unless score $phase spell > $zero asset run bossbar set minecraft:phasecast visible false
execute if score $phase spell > $phasetime spell run function pillow:spell_phase
execute if score $phase spell > $phasetime spell run scoreboard players set $phase spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:diamond",Slot:-106b,tag:{spe:1}}]}] holding 12
replaceitem entity @a[scores={holding=12}] weapon.offhand air
give @a[scores={holding=12}] minecraft:diamond{display:{Name:'{"text":"2페이즈","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=12}] run scoreboard players set $phase spell 1


execute as @e[type=arrow,nbt={Color:16756141}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 30
execute as @e[type=arrow,nbt={Color:16756141,inGround:1b}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["skill"]}
execute if entity @e[type=arrow,nbt={Color:16756141,inGround:1b}] run function pillow:ultimate
execute if entity @e[type=arrow,nbt={Color:16756141,inGround:1b}] run kill @e[type=arrow,nbt={Color:16756141,inGround:1b}]


bossbar set minecraft:slowcast players @a
execute store result bossbar minecraft:slowcast max run scoreboard players get $slowtime spell
execute store result bossbar minecraft:slowcast value run scoreboard players get $slow spell
execute if score $slow spell > $zero asset run scoreboard players add $slow spell 1
execute if score $slow spell > $zero asset run bossbar set minecraft:slowcast visible true
execute unless score $slow spell > $zero asset run bossbar set minecraft:slowcast visible false
execute if score $slow spell > $slowtime spell run function pillow:spell_slow
execute if score $slow spell > $slowtime spell run scoreboard players set $slow spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:ice",Slot:-106b,tag:{spe:1}}]}] holding 13
replaceitem entity @a[scores={holding=13}] weapon.offhand air
give @a[scores={holding=13}] minecraft:ice{display:{Name:'{"text":"감속","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=13}] run scoreboard players set $slow spell 1


bossbar set minecraft:teleportcast players @a
execute store result bossbar minecraft:teleportcast max run scoreboard players get $teleporttime spell
execute store result bossbar minecraft:teleportcast value run scoreboard players get $teleport spell
execute if score $teleport spell > $zero asset run scoreboard players add $teleport spell 1
execute if score $teleport spell > $zero asset run bossbar set minecraft:teleportcast visible true
execute unless score $teleport spell > $zero asset run bossbar set minecraft:teleportcast visible false
execute if score $teleport spell > $teleporttime spell run function pillow:spell_teleport
execute if score $teleport spell > $teleporttime spell run scoreboard players set $teleport spell 0

scoreboard players set @p[nbt={Inventory:[{id:"minecraft:ender_pearl",Slot:-106b,tag:{spe:1}}]}] holding 14
replaceitem entity @a[scores={holding=14}] weapon.offhand air
give @a[scores={holding=14}] minecraft:ender_pearl{display:{Name:'{"text":"텔레포트","color":"#FFABAB","italic":false}'},HideFlags:1,spe:1,Enchantments:[{id:"minecraft:blast_protection",lvl:1s}],spe:1} 1
execute if entity @a[scores={holding=14}] run scoreboard players set $teleport spell 1

scoreboard players set @a[scores={holding=1..}] holding 0