tag @s add PKI_villager_init

# Randomly transform villager into an Alchemist Master (5%)
function pkt:randomizer/next1
execute as @s if score %PKT_RNG_1 value matches ..50 run function pki:entities/villagers/alchemist_master/spawn