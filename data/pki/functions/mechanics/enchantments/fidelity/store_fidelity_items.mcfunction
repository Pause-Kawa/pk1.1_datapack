data modify storage pki:fidelity_items_first Items set value []
execute at @s run setblock ~ 0 ~ minecraft:air 
execute at @s run setblock ~ 0 ~ minecraft:yellow_shulker_box
execute at @s run data modify block ~ 0 ~ Items append from storage pki:player_inventory_first Items[{tag:{fidelity:1b}}]
data modify storage pki:fidelity_items_first Items set from block ~ 0 ~ Items

data modify storage pki:fidelity_items_second Items set value []
execute at @s run setblock ~ 0 ~ minecraft:air 
execute at @s run setblock ~ 0 ~ minecraft:yellow_shulker_box
execute at @s run data modify block ~ 0 ~ Items append from storage pki:player_inventory_second Items[{tag:{fidelity:1b}}]
data modify storage pki:fidelity_items_second Items set from block ~ 0 ~ Items