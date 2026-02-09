##魔導書選択
  execute if predicate ch_trip_and_magic:magic/spell_book/bolt run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/bolt/select
  execute if predicate ch_trip_and_magic:magic/spell_book/fire run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/fire/select
  execute if predicate ch_trip_and_magic:magic/spell_book/ice run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/ice/select
  execute if predicate ch_trip_and_magic:magic/spell_book/nature run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/nature/select
  execute if predicate ch_trip_and_magic:magic/spell_book/void run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/void/select
  execute if predicate ch_trip_and_magic:magic/spell_book/water run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/water/select
  execute if score @s ch_tm_spell_charge matches 10.. run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag