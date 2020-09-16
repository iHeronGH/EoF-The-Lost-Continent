#Tag toggleFury
execute if entity @s[tag=!toggleFury,scores={RCShift=1..},nbt={SelectedItem:{tag:{furyshift:1}}}] run tag @s add toggleFury
execute if entity @s[tag=toggleFury,nbt={SelectedItem:{tag:{dartmode:1}}}] run tag @s add dartMode
execute if entity @s[tag=toggleFury,nbt={SelectedItem:{tag:{slingmode:1}}}] run tag @s add slingMode
execute if entity @s[scores={RCShift=1..},nbt={SelectedItem:{tag:{furyshift:1}}}] run function the-lost-continent:loop-required/primaries/fury-shift-toggle
execute if entity @s[scores={RCShift=1..}] run scoreboard players set @s RCShift 0
tag @s remove ShiftActive