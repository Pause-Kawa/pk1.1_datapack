# Spawn amount a certain amount of entities
scoreboard players set %PKS_temp_1 value 2
function pks:spawners/raiders/common_raiders/spawn_loop
# Spawn animation
particle poof ~ ~ ~ 1 1 1 0.01 10
data modify entity @e[tag=raider,distance=..1,limit=1] Motion[0] set value 0.1