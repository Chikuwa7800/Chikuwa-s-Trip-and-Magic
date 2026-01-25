##魔導書選択
  execute if predicate ls_trip_and_magic:magic/spell_book/bolt run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/bolt/select
  execute if predicate ls_trip_and_magic:magic/spell_book/fire run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/fire/select
  execute if predicate ls_trip_and_magic:magic/spell_book/ice run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/ice/select
  execute if predicate ls_trip_and_magic:magic/spell_book/nature run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/nature/select
  execute if predicate ls_trip_and_magic:magic/spell_book/void run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/void/select
  execute if predicate ls_trip_and_magic:magic/spell_book/water run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/water/select
  function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag