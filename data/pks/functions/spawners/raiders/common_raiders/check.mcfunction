# Reset next check delay
scoreboard players set @s PKSTimeCheck 400
# Nearest entities count limit (up to 4 entities, to 16 blocks)
execute store result score @s PKSEntAround run execute at @s if entity @e[tag=raider,distance=..16]
execute unless score @s PKSEntAround matches 4.. run function pks:spawners/raiders/common_raiders/spawn