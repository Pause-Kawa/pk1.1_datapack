# Check if the surface is reachable (up to 1 block around)
execute store result score %PKG_temp_2 value run spreadplayers ~ ~ 0 1 false @s
# Try to place the marker on ground if the surface is reached
execute if score %PKG_temp_2 value matches 1 at @s run function pkg:grid/structure_placer/common/place_loop
# Remove the marker if it can't be placed, generate a structure if it is placed
execute unless entity @s[tag=placed] run kill @s
execute if entity @s[tag=placed] at @s run function pkg:grid/structure_placer/common/dispatch_generate