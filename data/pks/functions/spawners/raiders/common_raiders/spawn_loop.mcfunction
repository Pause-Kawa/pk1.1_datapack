# Spawn a random type of raider
function pkt:randomizer/next1
execute if score %PKT_RNG_1 value matches ..600 run function pks:entities/raiders/spawn/pillager
execute if score %PKT_RNG_1 value matches 601..750 run function pks:entities/raiders/spawn/pillager_multishot
execute if score %PKT_RNG_1 value matches 751.. run function pks:entities/raiders/spawn/vindicator
# Reccursivity
scoreboard players remove %PKS_temp_1 value 1
execute unless score %PKS_temp_1 value matches ..0 run function pks:spawners/raiders/common_raiders/spawn_loop