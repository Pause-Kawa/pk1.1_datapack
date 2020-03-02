# Tag the player as grid follower
tag @s add PKG_follow
# Summon a chunk marker and align it to the chunk grid
summon minecraft:area_effect_cloud ~ 0 ~ {Tags:["PKG_cell_marker","PKG_launcher"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute store result entity @e[type=area_effect_cloud,tag=PKG_cell_marker,tag=PKG_launcher,limit=1,sort=nearest] Pos[0] double 32 run data get entity @s Pos[0] 0.03125
execute store result entity @e[type=area_effect_cloud,tag=PKG_cell_marker,tag=PKG_launcher,limit=1,sort=nearest] Pos[2] double 32 run data get entity @s Pos[2] 0.03125