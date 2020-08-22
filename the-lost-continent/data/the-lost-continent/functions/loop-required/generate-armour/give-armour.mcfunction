#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check for Armours
execute if entity @a[team=HiveWings,nbt=!{Inventory:[{tag:{hivearmor:1}}]}] run function the-lost-continent:launch-add-ons/apply-armours/hivewing-scales
execute if entity @a[team=LeafWings,nbt=!{Inventory:[{tag:{leafarmor:1}}]}] run function the-lost-continent:launch-add-ons/apply-armours/leafwing-scales
execute if entity @a[team=SilkWings,nbt=!{Inventory:[{tag:{silkarmor:1}}]}] run function the-lost-continent:launch-add-ons/apply-armours/silkwing-scales
function the-lost-continent:launch-add-ons/apply-armours/apply-elytra