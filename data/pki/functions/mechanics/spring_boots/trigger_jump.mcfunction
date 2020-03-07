playsound minecraft:item.crossbow.hit ambient @a ~ ~ ~ 1 1.6
particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.01 2
# Used to know if the player has already the jump boost effect (from potion), if not, clear the effect on jump
execute if score @s PKIjbDuration matches ..20 run effect clear @s jump_boost
scoreboard players set @s PKIjbTimer 1