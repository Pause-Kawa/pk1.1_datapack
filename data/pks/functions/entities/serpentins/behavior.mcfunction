# Hurting sound
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.hoglin.hurt hostile @a ~ ~ ~ 1 0.9

# Ambient sound 
function pkt:randomizer/next1
execute if entity @s[nbt={HurtTime:0s}] if score %PKT_RNG_1 value matches ..4 run playsound minecraft:entity.hoglin.angry hostile @a ~ ~ ~ 1 0.9

# Guardian
execute if entity @s[tag=guardian] run function pks:entities/serpentins/behavior_guardian