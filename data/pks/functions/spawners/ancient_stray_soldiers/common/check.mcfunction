# Reset next check delay
scoreboard players set @s PKSTimeCheck 400
# Nearest entities count limit (up to 2 entities, to 16 blocks)
execute store result score @s PKSEntAround run execute at @s if entity @e[tag=ancient_stray_soldier,distance=..16]
execute unless score @s PKSEntAround matches 2.. run function pks:spawners/ancient_stray_soldiers/common/spawn