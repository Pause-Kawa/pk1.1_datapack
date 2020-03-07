# Teleport player to his spawnpoint
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] TeleportX
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] TeleportY
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] TeleportZ
execute as @s run function pki:mechanics/potion_teleportation/trigger