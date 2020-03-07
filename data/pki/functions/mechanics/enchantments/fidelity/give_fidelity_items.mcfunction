# Security : removing previous block (replace with air) to avoid container block conflict
# Then make the player loot the content
# First Fidelity items container (hotbar and two first row of inventory)
execute at @s run setblock ~ 0 ~ minecraft:air 
execute at @s run setblock ~ 0 ~ minecraft:yellow_shulker_box
execute at @s run data modify block ~ 0 ~ Items set from storage pki:fidelity_items_first Items
execute at @s run loot give @s mine ~ 0 ~ minecraft:air{drop_contents:1b}
# Second Fidelity items container (third row of inventory, armor and offhand)
execute at @s run setblock ~ 0 ~ minecraft:air
execute at @s run setblock ~ 0 ~ minecraft:yellow_shulker_box
execute at @s run data modify block ~ 0 ~ Items set from storage pki:fidelity_items_second Items
execute at @s run loot give @s mine ~ 0 ~ minecraft:air{drop_contents:1b}
# Check dimension to replace the temporary container block
execute at @s if entity @s[nbt={Dimension:0}] run setblock ~ 0 ~ minecraft:bedrock
execute at @s if entity @s[nbt={Dimension:-1}] run setblock ~ 0 ~ minecraft:bedrock
execute at @s if entity @s[nbt={Dimension:1}] run setblock ~ 0 ~ minecraft:air
# devMode
execute at @s if score %PKT_devmode value matches 1 if entity @s[nbt={Dimension:0}] run setblock ~ 0 ~ minecraft:light_blue_stained_glass