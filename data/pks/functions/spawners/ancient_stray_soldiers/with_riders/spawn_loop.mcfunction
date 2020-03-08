# Spawn a random type of raider
function pkt:randomizer/next
execute if score %PKT_RNG_1 value matches ..350 run function pks:entities/ancient_stray_soldiers/spawn/axe_handler
execute if score %PKT_RNG_1 value matches 351..700 run function pks:entities/ancient_stray_soldiers/spawn/archer
execute if score %PKT_RNG_1 value matches 701.. run function pks:entities/ancient_stray_soldiers/spawn/polar_bear_rider
# Reccursivity
scoreboard players remove %PKS_temp_1 value 1
execute unless score %PKS_temp_1 value matches ..0 run function pks:spawners/ancient_stray_soldiers/with_riders/spawn_loop