#Check for Armours
execute if entity @a[tag=isFlying] run function tlc:launch-add-ons/apply-armours/scales-to-wings
execute if entity @a[tag=!isFlying] run function tlc:launch-add-ons/apply-armours/wings-to-scales