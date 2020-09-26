effect give Pillowprism_ minecraft:resistance 10 10 true
effect give Pillowprism_ minecraft:resistance 10 10 true
execute as @e[type=minecraft:armor_stand,tag=skill] at @s run particle end_rod ~ ~ ~ 3 3 3 0.35 1500
execute as @e[type=minecraft:armor_stand,tag=skill] at @s run summon firework_rocket ~ ~ ~ {Life:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680],FadeColors:[I;16777215]}]}}}}
execute as @e[type=minecraft:armor_stand,tag=skill] at @s run summon creeper ~ ~ ~ {Invulnerable:1b,Glowing:1b,ExplosionRadius:16b,Fuse:0,ignited:1b}
scoreboard players set $lev spell 1
scoreboard players set $powerdrop spell 1
scoreboard players operation $arrow spell = $arrowtime spell
scoreboard players operation $attack spell = $attacktime spell
function pillow:spell_disarm
function pillow:spell_slow
schedule function pillow:ultimate_two 20t