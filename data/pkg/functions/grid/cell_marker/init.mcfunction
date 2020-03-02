tag @s add init

# Scan biomes
execute if entity @s[tag=!biome_scanned,predicate=pkg:biomes/flat_jungle] run function pkg:grid/cell_marker/terrain_info/flat_jungle
execute if entity @s[tag=!biome_scanned,predicate=pkg:biomes/flat_badlands] run function pkg:grid/cell_marker/terrain_info/flat_badlands
execute if entity @s[tag=!biome_scanned,predicate=pkg:biomes/flat_snowy] run function pkg:grid/cell_marker/terrain_info/flat_snowy

# Check chance for creating structure marker
# Executed only if a indexed biome has been detected, and if there is no other structure up to 12 chunks around
execute if entity @s[tag=terrain_found] unless entity @e[type=area_effect_cloud,tag=PKG_structure_marker,distance=..192,limit=1] run function pkg:grid/structure_marker/check_biome_chance