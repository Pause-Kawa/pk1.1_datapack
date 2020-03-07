# Try to place the marker on ground until layer 50
execute if entity @s[tag=flat_badlands] if block ~ ~-1 ~ #pkg:grounds/badlands run tag @s add placed
execute if entity @s[tag=!flat_badlands] if block ~ ~-1 ~ #pkg:grounds/common run tag @s add placed
execute unless entity @s[tag=placed] run tp @s ~ ~-1 ~
execute at @s[tag=!placed,y=50,dy=207] run function pkg:grid/structure_placer/common/place_loop