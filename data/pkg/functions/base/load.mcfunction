# ----------------------------------------
# Logs
# ----------------------------------------
tellraw @a[tag=op] [{"text":"Loaded ","color":"yellow"},{"text":"PK Grid","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]
execute if score %PKG_disable_generation value matches 1 run tellraw @a[tag=op] [{"text":"Grid generation is disabled on this map","color":"yellow"}]