# ------------------------------------------
# Grid
# ------------------------------------------
# Init the grid on each players (once per player)
execute as @a[tag=!PKG_follow,predicate=pkg:dimensions/overworld] at @s run function pkg:grid/engine/init
# Spread the chunk marker around the player (with a 12 chunks max render)
execute as @a at @s as @e[type=area_effect_cloud,tag=PKG_cell_marker,distance=..192] at @s run function pkg:grid/engine/spread