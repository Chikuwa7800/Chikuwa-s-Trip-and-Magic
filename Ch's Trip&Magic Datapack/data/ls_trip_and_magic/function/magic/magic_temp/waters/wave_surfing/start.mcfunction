tag @s add ls_tm_wave_surfing_pl
playsound entity.wither.shoot player @a ~ ~ ~ 1 1
playsound entity.horse.step player @a ~ ~ ~ 1 1
playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 2
playsound entity.player.splash.high_speed player @a ~ ~ ~ 1 1
playsound entity.player.splash player @a ~ ~ ~ 1 1
particle splash ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force
particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force
particle white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force
particle dust{color:[0.118,0.153,0.635],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0.2 25 force
particle splash ~ ~1 ~ 0.5 0.5 0.5 0.2 25 force
scoreboard players set @s ls_tm_wave_surfing_tick 10
