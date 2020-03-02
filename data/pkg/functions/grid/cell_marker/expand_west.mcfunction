# Try to summon an AEC (if in loaded area) and store the result in temp
# Add the init tag to marker if success
execute positioned ~-32 ~ ~ store result score %PKG_temp_1 value run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["PKG_cell_marker","spread_E"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score %PKG_temp_1 value matches 1.. run tag @s add spread_W