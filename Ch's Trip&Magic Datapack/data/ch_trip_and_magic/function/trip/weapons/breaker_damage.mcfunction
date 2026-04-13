particle enchanted_hit ~ ~1 ~ 0.25 2 0.25 0.04 10
particle crit ~ ~1 ~ 0.25 2 0.25 0.04 10
playsound trip_magic:item.trip.undead_killer player @a ~ ~1 ~ 1 1
execute as @e[tag=ch_tm_hit_undead_breaker] at @s run damage @s 3 ch_trip_and_magic:add_damage_bypass_cooldown by @p[tag=ch_tm_used_undead_breaker]
