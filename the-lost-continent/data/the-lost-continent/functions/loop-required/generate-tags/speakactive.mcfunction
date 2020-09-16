#Ready Leafspeak
execute if entity @s[nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{leafspeak:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,speakactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{leafspeak:1}}},nbt={Inventory:[{tag:{speakactivate:1}}]}] run clear @s carrot_on_a_stick{speakactivate:1}

#Tag SpeakActive
execute unless entity @s[x_rotation=-30..30] if entity @s[tag=!SpeakActive,tag=!CoolDown2,scores={RCSpeak=1..},nbt={SelectedItem:{tag:{leafspeak:1}}}] run tag @s add SpeakActive
execute if entity @s[tag=SpeakActive] at @s run function the-lost-continent:loop-required/secondaries/grant-buffs/leafwing-buffs
execute if entity @s[scores={RCSpeak=1..}] run scoreboard players set @s RCSpeak 0