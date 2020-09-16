execute as @a[team=HiveWings,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/acidactive
execute as @a[team=HiveWings,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/hiveactive
execute as @a[team=HiveWings,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/stingactive
execute if entity @a[team=HiveWings,nbt=!{Inventory:[{tag:{hivearmor:1}}]}] run function the-lost-continent:launch-add-ons/apply-armours/hivewing-scales
function the-lost-continent:launch-add-ons/team-effects/effect-hivewings
function the-lost-continent:loop-required/generate-armour/elytra-check