kill @e[type=experience_orb,distance=..1]
summon minecraft:experience_orb ~0.1 ~ ~ {Value:8}
summon minecraft:experience_orb ~-0.1 ~ ~ {Value:4}
execute if entity @s[nbt={Item:{tag:{rider:1b}}}] run summon minecraft:experience_orb ~ ~ ~ {Value:5}