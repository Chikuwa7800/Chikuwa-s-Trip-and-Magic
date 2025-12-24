#ダイブ
execute if predicate ls_trip_and_magic:score/used_stick unless predicate ls_trip_and_magic:acshident/sneaks if entity @s[tag=!ls_trip_and_magic_wakame_sword_jump_attack_,tag=!ls_trip_and_magic_wakame_sword_dive_cooldown] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] unless block ~ ~-2.6 ~ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/diving/start
#失敗
execute if predicate ls_trip_and_magic:score/used_stick unless predicate ls_trip_and_magic:acshident/sneaks if entity @s[tag=!ls_trip_and_magic_wakame_sword_jump_attack_,tag=ls_trip_and_magic_wakame_sword_dive_cooldown] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] unless block ~ ~-2.6 ~ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/cooldown {"name":"item_skill.wakame.1"}
execute if predicate ls_trip_and_magic:score/used_stick unless predicate ls_trip_and_magic:acshident/sneaks if entity @s[tag=!ls_trip_and_magic_wakame_sword_jump_attack_,tag=ls_trip_and_magic_wakame_sword_dive_cooldown] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] unless block ~ ~-2.6 ~ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no

#パーティクル表示
execute if entity @s[tag=ls_trip_and_magic_wakame_sword_dive] positioned over motion_blocking positioned ~ ~0.25 ~ run particle splash ^ ^ ^ 0.025 0 0.025 0.5 10 force
execute if entity @s[tag=ls_trip_and_magic_wakame_sword_dive] positioned over motion_blocking positioned ~ ~0.25 ~ run particle splash ^0.25 ^ ^-0. 0.025 0 0.025 0.5 10 force
execute if entity @s[tag=ls_trip_and_magic_wakame_sword_dive] positioned over motion_blocking positioned ~ ~0.25 ~ run particle splash ^-0.25 ^ ^-0.5 0.025 0 0.025 0.5 10 force

execute as @a[tag=ls_trip_and_magic_wakame_sword_dive] at @s if block ~ ~1.5 ~ #ls_trip_and_magic:no_collision_exclude_water run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/diving/end
execute as @a[tag=ls_trip_and_magic_wakame_sword_dive,scores={ls_tm_tick=100..}] at @s run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/diving/end

scoreboard players add @a[tag=ls_trip_and_magic_wakame_sword_dive,scores={ls_tm_tick=..100}] ls_tm_tick 1

#衝撃波
#失敗
execute if predicate ls_trip_and_magic:score/used_stick if predicate ls_trip_and_magic:acshident/sneaks if entity @s[tag=!ls_trip_and_magic_wakame_sword_jump_attack_,tag=ls_trip_and_magic_wakame_sword_boom_cooldown] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] run function ls_trip_and_magic:magic/cooldown {"name":"item_skill.wakame.2"}
execute if predicate ls_trip_and_magic:score/used_stick if predicate ls_trip_and_magic:acshident/sneaks if entity @s[tag=!ls_trip_and_magic_wakame_sword_jump_attack_,tag=ls_trip_and_magic_wakame_sword_boom_cooldown] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
#成功
execute if predicate ls_trip_and_magic:score/used_stick if predicate ls_trip_and_magic:acshident/sneaks if entity @s[tag=!ls_trip_and_magic_wakame_sword_jump_attack_,tag=!ls_trip_and_magic_wakame_sword_boom_cooldown] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/boom/main

#ジャンプアタック
 execute if predicate ls_trip_and_magic:acshident/sneaks if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal,tag=!ls_trip_and_magic_wakame_sword_jump_attack_cooldown] run scoreboard players add @s ls_tm_shift 1
 #チャージ1
  execute if entity @s[scores={ls_tm_shift=10},tag=!ls_trip_and_magic_wakame_sword_jump_attack_one] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/jump_attack/one
 #チャージ完了
  execute if entity @s[scores={ls_tm_shift=30},tag=!ls_trip_and_magic_wakame_sword_jump_attack_] if entity @s[predicate=ls_trip_and_magic:magic/wakame/normal] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/jump_attack/rast
 #待機
  execute if entity @s[tag=ls_trip_and_magic_wakame_sword_jump_attack_] run particle crimson_spore ~ ~1.25 ~ 0 0 0 0.3 10
 #発動
 execute if entity @s[tag=ls_trip_and_magic_wakame_sword_jump_attack_] if predicate ls_trip_and_magic:score/used_stick run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/jump_attack/start
 execute if entity @s[tag=ls_trip_and_magic_wakame_sword_jump_attack_2] if predicate ls_trip_and_magic:score/used_stick run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/jump_attack/main_start

scoreboard players add @s[tag=ls_trip_and_magic_wakame_sword_jump_attack_2_main,scores={ls_tm_wakame_jump=..32}] ls_tm_wakame_jump 1

execute if entity @s[tag=ls_trip_and_magic_wakame_sword_jump_attack_2_main] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/jump_attack/main













#準備中...
#execute if entity @s[nbt={SelectedItem:{tag:{detapack_type:ls_trip_magic,item_type:wakame_sword,mode:red}}}] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/mode/red/tick
#execute if entity @s[scores={ls_tm_wakame_player_hurt_mobs=10..}] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/mode/red/start
