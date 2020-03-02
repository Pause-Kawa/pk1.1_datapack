# Create structure marker
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PKG_structure_marker"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
# Create structure placer
summon minecraft:armor_stand ~ ~ ~ {Tags:["PKG_structure_placer"]}
spreadplayers ~ ~ 0 1 false @e[type=armor_stand,tag=PKG_structure_placer,distance=..1,limit=1]
say Structure Marker Triggered