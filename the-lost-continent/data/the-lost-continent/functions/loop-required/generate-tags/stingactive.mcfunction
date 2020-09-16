#Ready Sting Strike
execute if entity @s[nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{stingstrike:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,stingactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{stingstrike:1}}},nbt={Inventory:[{tag:{stingactivate:1}}]}] run clear @s carrot_on_a_stick{stingactivate:1}

#Tag toggleSting
execute if entity @s[tag=!toggleSting,scores={RCSting=1..},nbt={SelectedItem:{tag:{stingstrike:1}}}] run tag @s add toggleSting
execute if entity @s[tag=toggleSting,nbt={SelectedItem:{tag:{poisonmode:1}}}] run tag @s add poisonMode
execute if entity @s[tag=toggleSting,nbt={SelectedItem:{tag:{paralysismode:1}}}] run tag @s add paralysisMode
execute if entity @s[scores={RCSting=1..},nbt={SelectedItem:{tag:{stingstrike:1}}}] run function the-lost-continent:loop-required/tertiaries/sting-strike-toggle
execute if entity @s[scores={RCSting=1..}] run scoreboard players set @s RCSting 0