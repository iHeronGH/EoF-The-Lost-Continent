#Ready Fury Shift Toggle
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{furyshift:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,furytoggle:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{furyshift:1}}},nbt={Inventory:[{tag:{furytoggle:1}}]}] run clear @s carrot_on_a_stick{furytoggle:1}

#Ready Fury Shift Activate
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{furyshift:1}}}] unless entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{furytoggle:1}}]},nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,furyactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{furyshift:1}}},nbt={Inventory:[{tag:{furyactivate:1}}]}] run clear @s carrot_on_a_stick{furyactivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{furyactivate:1}}]}] run clear @s carrot_on_a_stick{furyactivate:1}

#Tag ShiftActive
execute if entity @s[tag=!ShiftActive,scores={RCShift=1..},nbt={Inventory:[{Slot:-106b,tag:{furytoggle:1}}]}] run tag @s add ShiftActive
execute if entity @s[tag=ShiftActive] run function tlc:loop-required/generate-tags/shiftactive
execute if entity @s[scores={RCShift=1..}] run scoreboard players set @s RCShift 0

#Tag FuryActive
execute if entity @s[tag=!FuryActive,tag=!CoolDown1,scores={RCFury=1..},predicate=ids-wings-of-fire:detect-sneak,nbt={Inventory:[{Slot:-106b,tag:{furyactivate:1}}]}] run tag @s add FuryActive
execute if entity @s[tag=FuryActive] run function tlc:loop-required/primaries/grant-buffs/leafwing-buffs
execute if entity @s[scores={RCFury=1..}] run scoreboard players set @s RCFury 0