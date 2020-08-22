#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

	#Primary Upgrades
execute at @a[team=HiveWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{acidspray:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/hivewings/acid-spray
execute at @a[team=LeafWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{furyshift:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/leafwings/fury-shift
execute at @a[team=SilkWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{silkshot:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/silkwings/silk-shot