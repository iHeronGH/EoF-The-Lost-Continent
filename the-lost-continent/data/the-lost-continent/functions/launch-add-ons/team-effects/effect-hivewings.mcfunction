#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All HiveWings
effect give @a[team=HiveWings] strength 1 0 true
effect clear @a[team=HiveWings,tag=nv] night_vision
tag @a[team=HiveWings,tag=nv] remove nv

#Sting Strike Effect
execute as @a[team=HiveWings,nbt={SelectedItem:{tag:{stingstrike:1}}},scores={Attack=1..}] unless entity @s[scores={stingStrike=1..}] run scoreboard players set @s stingStrike 500
execute as @a[team=HiveWings,nbt={SelectedItem:{tag:{poisonmode:1}}},scores={Attack=1..,stingStrike=500}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:19b}]},distance=0.1..4] poison 3 2 true
execute as @a[team=HiveWings,nbt={SelectedItem:{tag:{poisonmode:1}}},scores={Attack=1..,stingStrike=500}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:5b}]},distance=0.1..4] weakness 3 0 true
execute as @a[team=HiveWings,nbt={SelectedItem:{tag:{paralysismode:1}}},scores={Attack=1..,stingStrike=500}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:2b}]},distance=0.1..4] slowness 5 4 true
execute as @a[team=HiveWings,nbt={SelectedItem:{tag:{paralysismode:1}}},scores={Attack=1..,stingStrike=500}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:5b}]},distance=0.1..4] weakness 5 0 true
execute as @a[team=HiveWings,scores={Attack=1..}] run scoreboard players set @s Attack 0
execute as @a[team=HiveWings,scores={stingStrike=1..}] run scoreboard players remove @s stingStrike 1