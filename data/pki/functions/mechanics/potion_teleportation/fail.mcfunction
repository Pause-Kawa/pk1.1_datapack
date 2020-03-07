execute at @s run particle minecraft:smoke ~ ~ ~ 0.5 1 0.5 0.01 50
execute at @s run playsound minecraft:block.beacon.deactivate ambient @a
tellraw @s [{"text":"Vous ne vous remémorez aucun lieu pour vous-y téléporter...","color":"red","italic":true}]