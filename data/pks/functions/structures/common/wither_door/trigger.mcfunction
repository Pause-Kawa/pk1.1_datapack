# Break the door if a player near it has already defeated a Wither
execute if entity @a[scores={PKSDefeatWither=1..},distance=..5] run function pks:structures/common/wither_door/open