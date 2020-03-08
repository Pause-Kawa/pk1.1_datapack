# Spawn a random type of raider
function pkt:randomizer/next1
execute if score %PKT_RNG_1 value matches ..500 run function pks:entities/ancient_stray_soldiers/spawn/axe_handler
execute if score %PKT_RNG_1 value matches 501.. run function pks:entities/ancient_stray_soldiers/spawn/archer
# Reccursivity
scoreboard players remove %PKS_temp_1 value 1
execute unless score %PKS_temp_1 value matches ..0 run function pks:spawners/ancient_stray_soldiers/common/spawn_loop