setblock ~16 ~-11 ~13 minecraft:structure_block[mode=load]{name:"pks:snowy/ancient_fortress/bottom_1",posX:-16,posY:0,posZ:-13,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute run setblock ~16 ~-10 ~13 redstone_block replace
setblock ~16 ~32 ~13 minecraft:structure_block[mode=load]{name:"pks:snowy/ancient_fortress/top_1",posX:-16,posY:0,posZ:-13,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute run setblock ~16 ~33 ~13 redstone_block replace
# Add tower guard to HiddenName team
team join HiddenName @e[type=stray,tag=tower_guard]