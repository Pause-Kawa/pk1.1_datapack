# ----------------------------------------
# PKI Triggers
# ----------------------------------------
execute as @e[type=#pki:triggers,tag=PKI_trigger] at @s run function pki:triggers/main

# ----------------------------------------
# PKI Advancements
# ----------------------------------------

# ----------------------------------------
# Entities Triggers 
# ----------------------------------------

# Rain Dissipater
execute as @e[type=arrow,nbt={inGround:0b,CustomPotionEffects:[{Id:29b,Amplifier:4b,Duration:1}]},tag=!init] at @s run function pki:mechanics/rain_dissipater/init

# Spring boots
execute as @a[predicate=pki:spring_boots] at @s run function pki:mechanics/spring_boots/dispatch_triggers
# - When the player stop to sneak having the spring boots
execute as @a[scores={PKIjbDelay=1..},predicate=!pki:spring_boots] at @s run function pki:mechanics/spring_boots/trigger_release
# - When the player is jumping just after sneaking with the spring boots
execute as @a[scores={PKIjbTimer=1..}] at @s run function pki:mechanics/spring_boots/is_jumping

# Villagers
# - Check if there's a new adult villager with no profession in sight, then initiate it
execute as @e[type=villager,tag=!pkVillagerInit,nbt={VillagerData:{profession:"minecraft:none"},Age:0}] run function pki:entities/villagers/common/init

# Memorial Excerpt
# - Check if player has dropped a memorial excerpt
execute as @e[type=item,nbt={Item:{tag:{memorialExcerpt:1b}}}] at @s run function pki:mechanics/memorial_excerpt/trigger
# - Reset
execute as @a[scores={PKIdropBPattern=1..}] run scoreboard players set @s PKIdropBPattern 0
execute as @a[tag=PKI_ME_Thrower] at @s unless entity @e[type=item,nbt={Item:{tag:{memorialExcerpt:1b}}},distance=..10] run tag @s remove PKI_ME_Thrower

# ----------------------------------------------------------
# Events Triggers
# ----------------------------------------------------------
# Consomme a Potion of Teleportation
execute as @a[nbt={ActiveEffects:[{Id:28b,Amplifier:3b}]}] run function pki:mechanics/potion_teleportation/consume
execute if score %PKI_keepInventory value matches 0 as @a[scores={onDeath=1}] at @s run function pki:mechanics/enchantments/fidelity/trigger