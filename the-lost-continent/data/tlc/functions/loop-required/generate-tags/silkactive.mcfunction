#Ready Silk Shot
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{silkshot:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,silkactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{silkshot:1}}},nbt={Inventory:[{tag:{silkactivate:1}}]}] run clear @s carrot_on_a_stick{silkactivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{silkactivate:1}}]}] run clear @s carrot_on_a_stick{silkactivate:1}

#Tag SilkActive
execute if entity @s[tag=!SilkActive,tag=!CoolDown1,scores={RCSilk=1..,silkMeter=2..5},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{silkshot:1}}}] run tag @s add SilkActive
execute if entity @s[tag=SilkActive] run function tlc:loop-required/primaries/grant-buffs/silkwing-buffs
execute if entity @s[scores={RCSilk=1..}] run scoreboard players set @s RCSilk 0