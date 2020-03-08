# ----------------------------------------
# Parameters
# ----------------------------------------
# %PKS_parameters_generate : Turn on / off to enable structure generation from engine AEC (default : on)
# %PKS_parameters_activate_spawners : Turn on / off to enable custom spawners to spawn entities 
execute unless score %PKS_disable_generation value matches 0..1 run scoreboard players set %PKS_disable_generation value 0
execute unless score %PKS_disable_spawners value matches 0..1 run scoreboard players set %PKS_disable_spawners value 0

# ----------------------------------------
# Variables
# ----------------------------------------
# Scores :
#   value : used for most fake players as value for parameter
#   PKSTimeCheck : used by PKS spawners : time to left before doing another spawning check
#   PKSEntAround : used by PKS spawners : the amount entities around the spawners, having the tag spawnable by the spawner
# Fakes players
#   %PKS_parameters_<parameter> : parameters of the datapack - <parameter> : string
#   %PKS_temp_<x> : used for temporary operations - <x> : integer
#   - from other namespaces :
#   %PKT_RNG_<x> : used for RNG purposes
scoreboard objectives add PKSTimeCheck dummy
scoreboard objectives add PKSEntAround dummy
scoreboard objectives add PKSDefeatWither minecraft.killed:minecraft.wither 
scoreboard objectives add PKSDefeatEnderD minecraft.killed:minecraft.ender_dragon

# ----------------------------------------
# Logs
# ----------------------------------------
tellraw @a[tag=op] [{"text":"Loaded ","color":"yellow"},{"text":"PK Structures","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]