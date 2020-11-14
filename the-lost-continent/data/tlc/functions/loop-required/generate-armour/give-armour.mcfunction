#Check for Armours
execute if entity @a[team=HiveWings,nbt=!{Inventory:[{tag:{hivearmor:1}}]}] run function tlc:launch-add-ons/apply-armours/hivewing-scales
execute if entity @a[team=LeafWings,nbt=!{Inventory:[{tag:{leafarmor:1}}]}] run function tlc:launch-add-ons/apply-armours/leafwing-scales
execute if entity @a[team=SilkWings,nbt=!{Inventory:[{tag:{silkarmor:1}}]}] run function tlc:launch-add-ons/apply-armours/silkwing-scales