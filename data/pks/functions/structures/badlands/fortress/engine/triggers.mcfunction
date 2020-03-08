# Clear fortress if all raiders are killed up to 10 blocks (horizontal check) around the structure
execute at @s positioned ~-10 ~ ~-10 unless entity @e[type=#raiders,dx=44,dy=31,dz=44] positioned ~10 ~ ~10 run function pks:structures/badlands/fortress/mechanics/clear_fortress
# Clear spawners if no firework pillager is found up to 10 blocks (horizontal check) around the structure
execute at @s positioned ~-10 ~ ~-10 unless entity @e[type=pillager,tag=firework_pillager,dx=44,dy=31,dz=44] run function pks:structures/badlands/fortress/mechanics/clear_spawners