tag @s add init
# Temporary store the vertical speed value
execute store result score @s value run data get entity @s Motion[1]
execute if score @s value matches 2.. run function pki:mechanics/rain_dissipater/start