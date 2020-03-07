# Reward the player which is an hero of the village
execute at @s as @a[scores={PKIamRewarded=0},distance=..3] if data entity @s ActiveEffects[{Id:32b}] run function pki:entities/villagers/alchemist_master/behavior_rewards
# Reset the rewarded status after the bonus effect is over
execute as @a[scores={PKIamRewarded=1}] unless data entity @s ActiveEffects[{Id:32b}] run scoreboard players set @s PKIamRewarded 0