# ----------------------------------------
# Variables
# ----------------------------------------
# Scores :
#   value : used for most fake players as value for parameter
# Fakes players :
#   %PK_parameters_<parameter> : parameters of the datapack - <parameter> : string
#   %PKT_temp_<x> : used for temporary operations - <x> : integer
#   %PKT_RNG_<x> : used for RNG purposes - <x> : integer (1 to 2)
scoreboard objectives add value dummy
# Constants :
scoreboard players set %PKT_const_100 value 100

# ----------------------------------------
# Randomizer
# ----------------------------------------
# Used in order to generate random numbers through %PKT_RNG_<x>
function pkt:randomizer/init

# ----------------------------------------
# Logs
# ----------------------------------------
# To see the log, please be sure that your player has the "op" tag
execute as Nokaa if entity @s[tag=!op] run tag @s add op
tellraw @a[tag=op] [{"text":"Loaded ","color":"yellow"},{"text":"PK Tools","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]