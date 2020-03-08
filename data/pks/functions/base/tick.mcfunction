# ------------------------------------------
# Structures
# ------------------------------------------
# Common to all structures : enable the called main NBT structure to generate the rest of the structure
execute as @e[type=area_effect_cloud,tag=PKS_trigger] at @s run function pks:triggers/dispatch_triggers
execute as @e[type=area_effect_cloud,tag=PKS_loader] at @s run function pks:loaders/dispatch_loaders
# Specific to entities
# - Limit types checking to pks_mob entity types tag
execute as @e[type=#pks:pks_mobs,tag=PKS_mob] at @s if entity @p[distance=..20] run function pks:triggers/dispatch_mobs
# - Marker used to trigger entity death event (see the loot tables)
execute as @e[type=item,nbt={Item:{tag:{deathEvent:1b}}}] at @s run function pks:entities/common/dispatch_event_death