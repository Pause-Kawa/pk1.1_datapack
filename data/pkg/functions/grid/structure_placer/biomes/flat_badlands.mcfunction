# Generate a new structure randomly among all possible structures
function pkt:randomizer/next
# - Fortress Model 1
execute if score %PKT_RNG_1 value matches ..1000 run setblock ~ ~-2 ~ minecraft:structure_block[mode=load]{name:"pks:badlands/fortress/engine_1",posX:-12,posY:0,posZ:-12,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute run setblock ~ ~-1 ~ redstone_block replace
kill @s