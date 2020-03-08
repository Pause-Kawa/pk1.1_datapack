# Triggers common to all spawners 
# - reduce the delay before next spawning check
scoreboard players remove @s[scores={PKSTimeCheck=1..}] PKSTimeCheck 1
# Check for player around and dispatch
execute if entity @s[scores={PKSTimeCheck=0}] at @s if entity @p[distance=..30] run function pks:triggers/dispatch_spawners