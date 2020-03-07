# Security : removing previous block (replace with air) to avoid container block conflict
# Then make the player loot the content
# Drop first player's inventory saved container
execute at @s run setblock ~ 0 ~ minecraft:air
execute at @s run setblock ~ 0 ~ minecraft:yellow_shulker_box
execute at @s run data modify block ~ 0 ~ Items set from storage pki:player_inventory_first Items
execute at @s run loot spawn ~ ~ ~ mine ~ 0 ~ minecraft:air{drop_contents:1b}
# Drop second player's inventory saved container
execute at @s run setblock ~ 0 ~ minecraft:air
execute at @s run setblock ~ 0 ~ minecraft:yellow_shulker_box
execute at @s run data modify block ~ 0 ~ Items set from storage pki:player_inventory_second Items
execute at @s run loot spawn ~ ~ ~ mine ~ 0 ~ minecraft:air{drop_contents:1b}
# Check dimension to replace the temporary container block
execute at @s if entity @s[nbt={Dimension:0}] run setblock ~ 0 ~ minecraft:bedrock
execute at @s if entity @s[nbt={Dimension:-1}] run setblock ~ 0 ~ minecraft:bedrock
execute at @s if entity @s[nbt={Dimension:1}] run setblock ~ 0 ~ minecraft:air
# devMode
execute at @s if entity @s[nbt={Dimension:0},scores={devMode=1}] run setblock ~ 0 ~ minecraft:light_blue_stained_glass
say "drop_player_inventory"