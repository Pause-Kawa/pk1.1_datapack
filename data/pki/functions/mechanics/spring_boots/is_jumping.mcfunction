# Store the duration of the current Jump Boost effect of the player
execute store result score @a PKIjbDuration run data get entity @s ActiveEffects[{Id:28b}].Duration
# Check if the player is jumping within 10 ticks
execute store result score @s PKIisJumping run data get entity @s Motion[1] 1000
scoreboard players operation @s PKIisJumping *= %PKT_const_100 value
execute if score @s PKIisJumping matches 1.. run function pki:mechanics/spring_boots/trigger_jump
# If not, clear the jump boost effect after 5 ticks if the player hasn't jump yet and has no Jump Boost effect from potion or other things (effect longer than 20 ticks)
execute if score @s PKIjbDuration matches ..15 run effect clear @s jump_boost
scoreboard players remove @s PKIjbTimer 1