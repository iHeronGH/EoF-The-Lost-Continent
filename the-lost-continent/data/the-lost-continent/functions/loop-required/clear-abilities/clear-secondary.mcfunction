#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Clear Secondary Abilities
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{hivemind:1}}]}] run clear @p yellow_dye{hivemind:1}
execute if entity @p[team=!LeafWings,nbt={Inventory:[{tag:{leafspeak:1}}]}] run clear @p lime_dye{leafspeak:1}
execute if entity @p[team=!SilkWings,nbt={Inventory:[{tag:{sense:1}}]}] run clear @p white_dye{sense:1}

	#Clear Secondary Ability Activators
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{hiveactivate:1}}]}] run clear @p carrot_on_a_stick{hiveactivate:1}
execute if entity @p[team=!LeafWings,nbt={Inventory:[{tag:{speakactivate:1}}]}] run clear @p carrot_on_a_stick{speakactivate:1}