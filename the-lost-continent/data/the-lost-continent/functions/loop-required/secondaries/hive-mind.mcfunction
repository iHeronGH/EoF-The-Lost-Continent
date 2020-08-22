#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?

#Effect Entities
execute if entity @s[tag=!CoolDown2] run effect give @s strength 6 1 true
execute if entity @s[tag=!CoolDown2] run effect give @a[team=HiveWings,nbt={ActiveEffects:[{Id:1b,Amplifier:2b}]},distance=..8] speed 6 3 true
execute if entity @s[tag=!CoolDown2] run effect give @a[team=HiveWings,nbt={ActiveEffects:[{Id:1b,Amplifier:1b}]},distance=..8] speed 6 2 true
execute if entity @s[tag=!CoolDown2] run effect give @a[team=HiveWings,nbt={ActiveEffects:[{Id:1b,Amplifier:0b}]},distance=..8] speed 6 1 true
execute if entity @s[tag=!CoolDown2] run effect give @a[team=HiveWings,nbt=!{ActiveEffects:[{Id:1b,Amplifier:0b}]},distance=..8] speed 6 0 true
execute if entity @s[tag=!CoolDown2] run title @s actionbar {"text":"Hive Mind has entered a 30s cooldown!","bold":true,"color":"yellow"}

	#Enter Cooldown
execute if entity @s[tag=!CoolDown2] run schedule function the-lost-continent:cooldown-two 600t append