# Create a new structure marker depending on the chance of being one seen per validate chunk marker
function pkt:randomizer/next1
# - Flat Lands - Jungle (20% chance of spawning a structure)
execute if entity @s[tag=flat_jungle] if score %PKT_RNG_1 value matches 0..200 run function pkg:grid/structure_marker/create
# - Flat Lands - Badlands (30% chance of spawning a structure)
execute if entity @s[tag=flat_badlands] if score %PKT_RNG_1 value matches 0..300 run function pkg:grid/structure_marker/create
# - Flat Lands - Snowy (20% chance of spawning a structure)
execute if entity @s[tag=flat_snowy] if score %PKT_RNG_1 value matches 0..200 run function pkg:grid/structure_marker/create