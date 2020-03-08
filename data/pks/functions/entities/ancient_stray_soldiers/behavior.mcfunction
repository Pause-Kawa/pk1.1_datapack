# Hurting sound
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 1.4

# Ambient sound 
function pkt:randomizer/next
execute if entity @s[nbt={HurtTime:0s}] if score %PKT_RNG_1 value matches ..4 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.4