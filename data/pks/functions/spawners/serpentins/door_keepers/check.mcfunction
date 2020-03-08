# Reset next check delay
scoreboard players set @s PKSTimeCheck 400
# Turn the spawner into common serpentins spawners if no lock door is near anymore
execute unless entity @e[type=area_effect_cloud,tag=heavy_door,distance=..10] run function pks:spawners/serpentins/door_keepers/transform
# Nearest entities count limit (up to 4 entities, to 16 blocks)
execute store result score @s PKSEntAround run execute at @s if entity @e[tag=serpentin,distance=..16]
execute unless score @s PKSEntAround matches 4.. run function pks:spawners/serpentins/door_keepers/spawn