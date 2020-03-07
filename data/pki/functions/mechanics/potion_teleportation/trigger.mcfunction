tp @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]}] @s
# Effects
effect give @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]}] minecraft:nausea 4 1 true
execute at @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]}] run particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.01 200
execute at @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]}] run playsound minecraft:block.beacon.power_select ambient @a