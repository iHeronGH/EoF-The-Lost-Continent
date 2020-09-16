execute as @a[team=LeafWings,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/furyactive
execute as @a[team=LeafWings,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/speakactive
execute if entity @a[team=LeafWings,nbt=!{Inventory:[{tag:{leafarmor:1}}]}] run function the-lost-continent:launch-add-ons/apply-armours/leafwing-scales
function the-lost-continent:launch-add-ons/team-effects/effect-leafwings
function the-lost-continent:loop-required/generate-armour/elytra-check