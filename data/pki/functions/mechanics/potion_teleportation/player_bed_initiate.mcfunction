execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["checkForBed"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute at @s as @e[type=area_effect_cloud,tag=checkForBed,limit=1,sort=nearest] run function pki:mechanics/potion_teleportation/player_bed_check