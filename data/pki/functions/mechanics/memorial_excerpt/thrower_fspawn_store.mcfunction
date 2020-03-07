execute at @s run scoreboard players set @p[tag=PKI_ME_Thrower] PKIfSpawnPoint 1
execute store result score @p[tag=PKI_ME_Thrower] FTeleportX run data get entity @s Pos[0]
execute store result score @p[tag=PKI_ME_Thrower] FTeleportY run data get entity @s Pos[1]
execute store result score @p[tag=PKI_ME_Thrower] FTeleportZ run data get entity @s Pos[2]
execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.3 1 0.3 0.01 100
execute at @s run particle minecraft:firework ~ ~ ~ 0.15 0.4 0.15 0.01 30
execute at @s run playsound minecraft:block.beacon.power_select ambient @a
execute at @s run playsound minecraft:entity.elder_guardian.hurt ambient @a
kill @s
tellraw @p[tag=PKI_ME_Thrower] {"text":"Spawnpoint set"}
tag @p[tag=PKI_ME_Thrower] remove PKI_ME_Thrower