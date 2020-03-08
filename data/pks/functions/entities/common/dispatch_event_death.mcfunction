# Event that occurs when a specified entity dies
execute if entity @s[nbt={Item:{tag:{ancientStraySoldier:1b}}}] run function pks:entities/ancient_stray_soldiers/event_death
execute if entity @s[nbt={Item:{tag:{serpentin:1b}}}] run function pks:entities/serpentins/event_death
# Remove the death event marker
kill @s