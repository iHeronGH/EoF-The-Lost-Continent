#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

	#Tertiary Abilities
execute at @a[team=HiveWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{stingstrike:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/hivewings/sting-strike
execute at @a[team=LeafWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{venomaura:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/leafwings/venom-aura
execute at @a[team=SilkWings,tag=!abilToggOff,nbt=!{Inventory:[{tag:{webbing:1}}]}] run function the-lost-continent:loop-required/generate-hotbars/silkwings/webbing