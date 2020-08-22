#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

	#Secondary Upgrades
execute at @a[team=HiveWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{hivemind:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/hivewings/hive-mind
execute at @a[team=LeafWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{leafspeak:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/leafwings/leafspeak
execute at @a[team=SilkWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{sense:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/silkwings/sense