execute if entity @s[scores={PKIjbDelay=1}] run function pki:mechanics/spring_boots/warn_small_boost
execute if entity @s[scores={PKIjbDelay=..40}] run function pki:mechanics/spring_boots/trigger_small_boost
execute if entity @a[scores={PKIjbDelay=40}] run function pki:mechanics/spring_boots/warn_high_boost
execute if entity @a[scores={PKIjbDelay=41}] run function pki:mechanics/spring_boots/trigger_high_boost