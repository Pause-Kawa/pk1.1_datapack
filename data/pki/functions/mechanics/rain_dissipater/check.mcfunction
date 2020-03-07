# Reduce the timer
execute if entity @s[tag=rain_dissipater,scores={value=1..}] run scoreboard players remove @s value 1
execute if entity @s[tag=rain_dissipater,scores={value=0}] run function pki:mechanics/rain_dissipater/trigger