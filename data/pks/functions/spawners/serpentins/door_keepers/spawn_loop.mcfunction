# Spawn a random type of serpentin
function pkt:randomizer/next
execute if score %PKT_RNG_1 value matches ..450 run function pks:entities/serpentins/spawn/archer
execute if score %PKT_RNG_1 value matches 451..750 run function pks:entities/serpentins/spawn/swordsman
execute if score %PKT_RNG_1 value matches 751.. run function pks:entities/serpentins/spawn/serpentin_door_keeper
# Reccursivity
scoreboard players remove %PKS_temp_1 value 1
execute unless score %PKS_temp_1 value matches ..0 run function pks:spawners/serpentins/door_keepers/spawn_loop