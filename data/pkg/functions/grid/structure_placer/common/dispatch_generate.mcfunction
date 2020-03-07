# Generate a new structure randomly among all possible structures
function pkt:randomizer/next
# - Fortress Model 1
execute if score %PKT_RNG_1 value matches ..1000 run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"pks:flat_lands/badlands/fortress/engine_1",posX:-1,posY:0,posZ:-1,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute run setblock ~ ~ ~ redstone_block replace
kill @s
