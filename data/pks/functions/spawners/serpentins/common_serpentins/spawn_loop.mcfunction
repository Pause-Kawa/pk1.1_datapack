# Spawn a random type of serpentin
function pkt:randomizer/next1
execute if score %PKT_RNG_1 value matches ..600 run function pks:entities/serpentins/spawn/archer
execute if score %PKT_RNG_1 value matches 601..1000 run function pks:entities/serpentins/spawn/swordsman
# Reccursivity
scoreboard players remove %PKS_temp_1 value 1
execute unless score %PKS_temp_1 value matches ..0 run function pks:spawners/serpentins/common_serpentins/spawn_loop