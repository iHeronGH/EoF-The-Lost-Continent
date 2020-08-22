execute as @a[team=SilkWings,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/silkactive
execute as @a[team=SilkWings,nbt={SelectedItem:{tag:{sense:1}}}] at @s run function the-lost-continent:loop-required/secondaries/grant-buffs/silkwing-buffs
function the-lost-continent:launch-add-ons/team-effects/effect-silkwings