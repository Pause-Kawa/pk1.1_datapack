# Create structure marker
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PKG_structure_marker"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Create structure placer
execute if entity @s[tag=flat_badlands] run summon minecraft:armor_stand ~ ~ ~ {Tags:["PKG_structure_placer","flat_badlands"],NoGravity:1b}
execute if entity @s[tag=flat_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["PKG_structure_placer","flat_jungle"],NoGravity:1b}
execute if entity @s[tag=flat_snowy] run summon minecraft:armor_stand ~ ~ ~ {Tags:["PKG_structure_placer","flat_snowy"],NoGravity:1b}

execute as @e[type=armor_stand,tag=PKG_structure_placer,distance=..1,limit=1] run function pkg:grid/structure_placer/common/place