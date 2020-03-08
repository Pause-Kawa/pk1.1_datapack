execute if entity @s[tag=orientedAxeX] at @s run fill ~-1 ~-1 ~ ~1 ~2 ~ minecraft:air replace
execute if entity @s[tag=orientedAxeZ] at @s run fill ~ ~-1 ~-1 ~ ~2 ~1 minecraft:air replace
execute at @s run particle minecraft:poof ~ ~-1 ~ 0 1 1 0.01 30
execute at @s run particle minecraft:block polished_andesite ~ ~ ~ 0 3 1 0.01 60
execute at @s run playsound minecraft:item.trident.return ambient @a
kill @s