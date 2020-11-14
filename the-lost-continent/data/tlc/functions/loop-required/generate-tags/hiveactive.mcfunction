#Ready Desert Storm
execute if entity @s[nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{hivemind:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,hiveactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{hivemind:1}}},nbt={Inventory:[{tag:{hiveactivate:1}}]}] run clear @s carrot_on_a_stick{hiveactivate:1}

#Tag HiveActive
execute if entity @s[tag=!HiveActive,tag=!CoolDown2,scores={RCHive=1..},nbt={SelectedItem:{tag:{hivemind:1}}}] run tag @s add HiveActive
execute if entity @s[tag=HiveActive] at @s run function tlc:loop-required/secondaries/grant-buffs/hivewing-buffs
execute if entity @s[scores={RCHive=1..}] run scoreboard players set @s RCHive 0