execute unless score %PKS_disable_generation value matches 1 if entity @s[tag=PKS_engine] run function pks:loaders/dispatch_engines
execute unless score %PKS_disable_spawners value matches 1 if entity @s[tag=PKS_spawner] run function pks:spawners/common/init