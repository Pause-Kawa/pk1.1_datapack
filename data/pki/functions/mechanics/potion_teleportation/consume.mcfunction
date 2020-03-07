execute if entity @s[scores={PKIfSpawnPoint=1}] run function pki:mechanics/potion_teleportation/player_fspawn_initiate
execute if entity @s[scores={PKIfSpawnPoint=0}] if data entity @s SpawnY run function pki:mechanics/potion_teleportation/player_bed_initiate
execute if entity @s[scores={PKIfSpawnPoint=0}] unless data entity @s SpawnY run function pki:mechanics/potion_teleportation/fail