# ----------------------------------------
# Scores
# ----------------------------------------
# Used for Spring Boots
#   PKIjbTimer : Timer before unactivated the boots boost jump 
#   PKIjbDelay : Delay before activate next boots boost jump
#   PKIisJumping : Enable to know if the player is jumping
#   PKIjbDuration : Enable to store the current duration of the jump boost status effect of the player
scoreboard objectives add PKIjbTimer dummy
scoreboard objectives add PKIjbDelay dummy
scoreboard objectives add PKIisJumping dummy
scoreboard objectives add PKIjbDuration dummy
scoreboard players set @a PKIjbTimer 0
scoreboard players set @a PKIjbDelay 0
# Used for Alchemist Master
#   PKIamRewarded : Used to know if the player with the "Hero of the Village" effect has already been rewarded by an AM
scoreboard objectives add PKIamRewarded dummy
scoreboard players set @a PKIamRewarded 0
# Memorial Excerpt
scoreboard objectives add PKIfSpawnPoint dummy
scoreboard objectives add PKIdropBPattern minecraft.dropped:minecraft.globe_banner_pattern
# Potion of Teleportation 
scoreboard objectives add FTeleportX dummy
scoreboard objectives add FTeleportY dummy
scoreboard objectives add FTeleportZ dummy
scoreboard objectives add TeleportX dummy
scoreboard objectives add TeleportY dummy
scoreboard objectives add TeleportZ dummy
# Settings
# - The vanilla gamerule is override for the enchantment Fidelity, use this setting to keep inventory after death
scoreboard objectives add keepInventory dummy
execute unless score %PKI_keepInventory value matches 0..1 run scoreboard players set %PKI_keepInventory value 0
# Event (used on death)
scoreboard objectives add onDeath minecraft.custom:minecraft.deaths

# ----------------------------------------
# Gamerule changes
# ----------------------------------------
gamerule keepInventory true

# ----------------------------------------
# Logs
# ----------------------------------------
tellraw @a[tag=op] [{"text":"Loaded ","color":"yellow"},{"text":"PK Improvments","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]