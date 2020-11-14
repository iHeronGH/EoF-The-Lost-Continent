execute as @a[team=LeafWings,tag=!abilToggOff] run function tlc:loop-required/generate-tags/furyactive
execute as @a[team=LeafWings,tag=!abilToggOff] run function tlc:loop-required/generate-tags/speakactive
execute if entity @a[team=LeafWings,nbt=!{Inventory:[{tag:{leafarmor:1}}]}] run function tlc:launch-add-ons/apply-armours/leafwing-scales
function tlc:launch-add-ons/team-effects/effect-leafwings
function tlc:loop-required/generate-armour/elytra-check