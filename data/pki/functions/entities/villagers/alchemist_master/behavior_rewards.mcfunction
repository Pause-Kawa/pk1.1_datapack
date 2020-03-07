# Make the villager facing the player 
execute at @e[type=villager,tag=alchemist_master,limit=1,sort=nearest] run tp @e[type=villager,tag=alchemist_master,limit=1,sort=nearest] ~ ~ ~ facing entity @s
# Throw three Potion of Triumph to the player
execute as @e[type=villager,tag=alchemist_master,limit=1,sort=nearest] at @s run summon minecraft:item ^0.7 ^1 ^1 {Item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:3,Amplifier:1,Duration:3600},{Id:5,Amplifier:1,Duration:3600}],CustomPotionColor:15356783,display:{Name:'{"text":"Potion of Triumph","color":"aqua","italic":false}'}}}}
execute as @e[type=villager,tag=alchemist_master,limit=1,sort=nearest] at @s run summon minecraft:item ^-0.4 ^1.4 ^1.2 {Item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:3,Amplifier:1,Duration:3600},{Id:5,Amplifier:1,Duration:3600}],CustomPotionColor:15356783,display:{Name:'{"text":"Potion of Triumph","color":"aqua","italic":false}'}}}}
execute as @e[type=villager,tag=alchemist_master,limit=1,sort=nearest] at @s run summon minecraft:item ^ ^1.7 ^1.4 {Item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:3,Amplifier:1,Duration:3600},{Id:5,Amplifier:1,Duration:3600}],CustomPotionColor:15356783,display:{Name:'{"text":"Potion of Triumph","color":"aqua","italic":false}'}}}}
# Effects 
execute at @e[type=villager,tag=alchemist_master,limit=1,sort=nearest] run particle minecraft:happy_villager ~ ~ ~ 0.2 1 0.2 0.01 20
execute at @e[type=villager,tag=alchemist_master,limit=1,sort=nearest] run playsound minecraft:entity.villager.yes ambient @a
# Add the rewarded status to the player
scoreboard players set @s PKIamRewarded 1