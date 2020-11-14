#Ready Acid Breath
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{acidspray:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,acidactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{acidspray:1}}},nbt={Inventory:[{tag:{acidactivate:1}}]}] run clear @s carrot_on_a_stick{acidactivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{acidactivate:1}}]}] run clear @s carrot_on_a_stick{acidactivate:1}

#Tag AcidActive
execute if entity @s[tag=!AcidActive,tag=!CoolDown1,scores={RCAcid=1..},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{acidspray:1}}}] run tag @s add AcidActive
execute if entity @s[tag=AcidActive] run function tlc:loop-required/primaries/grant-buffs/hivewing-buffs
execute if entity @s[scores={RCAcid=1..}] run scoreboard players set @s RCAcid 0