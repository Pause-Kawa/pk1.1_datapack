# Return a random value between 0 and %PKT_randomizer_max value
scoreboard players operation %PKT_randomizer_seed value *= %PKT_randomizer_mult value
scoreboard players operation %PKT_randomizer_seed value += %PKT_randomizer_incr value
scoreboard players operation %PKT_RNG_1 value = %PKT_randomizer_seed value
scoreboard players operation %PKT_RNG_1 value /= %PKT_const_100 value
scoreboard players operation %PKT_RNG_1 value %= %PKT_randomizer_max value