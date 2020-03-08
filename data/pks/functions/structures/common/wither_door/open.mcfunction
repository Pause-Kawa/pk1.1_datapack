# Remove the blocks door and the buttons
execute positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~3 ~2 minecraft:air replace
execute positioned ~-1 ~1 ~-1 run fill ~ ~ ~ ~ ~1 ~2 minecraft:air replace
# Animation and sounds
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 0.1 
playsound minecraft:entity.lightning_bolt.impact ambient @a ~ ~10 ~ 1 1.4
particle minecraft:enchant ~ ~2 ~ 1 1 1 0.1 100
particle minecraft:poof ~ ~1 ~ 0.5 2 0.5 0.1 40
# Remove the marker
kill @s