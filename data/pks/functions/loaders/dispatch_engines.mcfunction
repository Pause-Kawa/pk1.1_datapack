# Change tag
tag @s remove PKS_loader
tag @s add PKS_trigger
# Badlands
execute if entity @s[tag=badlands_fortress] run function pks:structures/badlands/fortress/engine/dispatch_models
execute if entity @s[tag=ancient_fortress] run function pks:structures/snowy/ancient_fortress/engine/dispatch_models
execute if entity @s[tag=jungle_pillar] run function pks:structures/jungle/pillar/engine/dispatch_models