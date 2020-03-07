execute as @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] store result score @s TeleportX run data get entity @s SpawnX 1
execute as @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] store result score @s TeleportY run data get entity @s SpawnY 1
execute as @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] store result score @s TeleportZ run data get entity @s SpawnZ 1
execute as @s run function pki:mechanics/potion_teleportation/player_bed_execute