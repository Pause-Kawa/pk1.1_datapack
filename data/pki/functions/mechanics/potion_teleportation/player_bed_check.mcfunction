execute store result entity @s Pos[0] double 1 run data get entity @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] SpawnX 1
execute store result entity @s Pos[1] double 1 run data get entity @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] SpawnY 1
execute store result entity @s Pos[2] double 1 run data get entity @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]},limit=1] SpawnZ 1
execute at @s run forceload add ~ ~
execute at @s if block ~ ~ ~ #minecraft:beds run function pki:mechanics/potion_teleportation/player_bed_store
execute at @s unless block ~ ~ ~ #minecraft:beds as @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]}] run function pki:mechanics/potion_teleportation/fail
execute at @s run forceload remove ~ ~
kill @s