# Rewards players and celebrate
effect give @a[distance=..50] hero_of_the_village 600 0
execute as @e[type=area_effect_cloud,tag=PKS_marker,tag=raiders_flag,dx=24,dy=31,dz=24] at @s if block ~ ~ ~ #banners run function pks:structures/badlands/fortress/mechanics/replace_flags
execute positioned ~11 ~2 ~18 run summon minecraft:villager ~ ~ ~
execute positioned ~13 ~2 ~13 run summon minecraft:villager ~ ~ ~
execute positioned ~11 ~2 ~18 run function pks:structures/badlands/fortress/mechanics/firework_1
execute positioned ~13 ~2 ~13 run function pks:structures/badlands/fortress/mechanics/firework_2
execute as @e[type=villager,tag=celebrate] run tag @s remove celebrate
# Kill all badlands_fortress AEC in area
kill @e[type=area_effect_cloud,tag=badlands_fortress,tag=!PKS_engine,dx=24,dy=31,dz=24]
kill @s