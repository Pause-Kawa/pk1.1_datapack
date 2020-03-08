function pkt:randomizer/next1
execute if entity @s[tag=facing_south] if score %PKT_RNG_1 value matches 0..500 run setblock ~ ~ ~ minecraft:red_wall_banner[facing=south]{Patterns:[{Color:4,Pattern:"ss"}]} destroy
execute if entity @s[tag=facing_south] if score %PKT_RNG_1 value matches 501..1000 run setblock ~ ~ ~ minecraft:red_wall_banner[facing=south]{Patterns:[{Color:4,Pattern:"vh"}]} destroy
execute if entity @s[tag=facing_east] if score %PKT_RNG_1 value matches 0..500 run setblock ~ ~ ~ minecraft:red_wall_banner[facing=east]{Patterns:[{Color:4,Pattern:"ss"}]} destroy
execute if entity @s[tag=facing_east] if score %PKT_RNG_1 value matches 501..1000 run setblock ~ ~ ~ minecraft:red_wall_banner[facing=east]{Patterns:[{Color:4,Pattern:"vh"}]} destroy
execute if entity @s[tag=facing_north] if score %PKT_RNG_1 value matches 0..500 run setblock ~ ~ ~ minecraft:red_wall_banner[facing=north]{Patterns:[{Color:4,Pattern:"ss"}]} destroy
execute if entity @s[tag=facing_north] if score %PKT_RNG_1 value matches 501..1000 run setblock ~ ~ ~ minecraft:red_wall_banner[facing=north]{Patterns:[{Color:4,Pattern:"vh"}]} destroy