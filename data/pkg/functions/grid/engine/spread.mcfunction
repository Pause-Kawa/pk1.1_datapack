# Init the marker once (biome, structure generation...)
execute unless entity @s[tag=init] run function pkg:grid/cell_marker/init
# Check if another marker has already summoned an entity border marker
execute unless entity @s[tag=spread_E] positioned ~32 ~ ~ if entity @e[type=area_effect_cloud,tag=PKG_cell_marker,distance=..1,limit=1] run tag @s add spread_E
execute unless entity @s[tag=spread_W] positioned ~-32 ~ ~ if entity @e[type=area_effect_cloud,tag=PKG_cell_marker,distance=..1,limit=1] run tag @s add spread_W
execute unless entity @s[tag=spread_S] positioned ~ ~ ~32 if entity @e[type=area_effect_cloud,tag=PKG_cell_marker,distance=..1,limit=1] run tag @s add spread_S
execute unless entity @s[tag=spread_N] positioned ~ ~ ~-32 if entity @e[type=area_effect_cloud,tag=PKG_cell_marker,distance=..1,limit=1] run tag @s add spread_N
# Check if the border has already a block border marker
execute unless entity @s[tag=spread_E] if block ~32 ~ ~ minecraft:barrier run tag @s add spread_E
execute unless entity @s[tag=spread_W] if block ~-32 ~ ~ minecraft:barrier run tag @s add spread_W
execute unless entity @s[tag=spread_S] if block ~ ~ ~32 minecraft:barrier run tag @s add spread_S
execute unless entity @s[tag=spread_N] if block ~ ~ ~-32 minecraft:barrier run tag @s add spread_N
# Remove entity marker and place block marker if each sides chunks are spread
execute if entity @s[tag=spread_E,tag=spread_W,tag=spread_S,tag=spread_N] run function pkg:grid/cell_marker/done
# Expand the marker (if it still exists)
execute if entity @s run function pkg:grid/cell_marker/expand