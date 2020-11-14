execute as @a[team=HiveWings,tag=!abilToggOff] run function tlc:loop-required/generate-tags/acidactive
execute as @a[team=HiveWings,tag=!abilToggOff] run function tlc:loop-required/generate-tags/hiveactive
execute as @a[team=HiveWings,tag=!abilToggOff] run function tlc:loop-required/generate-tags/stingactive
execute if entity @a[team=HiveWings,nbt=!{Inventory:[{tag:{hivearmor:1}}]}] run function tlc:launch-add-ons/apply-armours/hivewing-scales
function tlc:launch-add-ons/team-effects/effect-hivewings
function tlc:loop-required/generate-armour/elytra-check