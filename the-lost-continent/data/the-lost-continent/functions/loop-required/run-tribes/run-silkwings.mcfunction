execute as @a[team=SilkWings,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/silkactive
execute as @a[team=SilkWings,nbt={SelectedItem:{tag:{sense:1}}}] at @s run function the-lost-continent:loop-required/secondaries/grant-buffs/silkwing-buffs
execute if entity @a[team=SilkWings,nbt=!{Inventory:[{tag:{silkarmor:1}}]}] run function the-lost-continent:launch-add-ons/apply-armours/silkwing-scales
function the-lost-continent:launch-add-ons/team-effects/effect-silkwings
function the-lost-continent:loop-required/generate-armour/elytra-check