# ----------------------------------------------------------
# Before clearing player
# ----------------------------------------------------------
function pki:triggers/actions/save_player_inventory
function pki:mechanics/enchantments/fidelity/store_fidelity_items
function pki:mechanics/enchantments/fidelity/remove_fidelity_items
function pki:triggers/actions/drop_player_inventory
function pki:triggers/actions/drop_player_experience

# ----------------------------------------------------------
# Clearing player
# ----------------------------------------------------------
clear @s
xp set @s 0 points
xp set @s 0 levels

# ----------------------------------------------------------
# After clearing player
# ----------------------------------------------------------
function pki:mechanics/enchantments/fidelity/give_fidelity_items
scoreboard players set @s onDeath 0