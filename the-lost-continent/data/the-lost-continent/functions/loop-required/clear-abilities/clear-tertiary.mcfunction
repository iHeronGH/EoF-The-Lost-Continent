#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Clear Tertiary Abilities
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{stingstrike:1}}]}] run clear @p black_dye{stingstrike:1}
execute if entity @p[team=!LeafWings,nbt={Inventory:[{tag:{venomaura:1}}]}] run clear @p green_dye{venomaura:1}
execute if entity @p[team=!SilkWings,nbt={Inventory:[{tag:{webbing:1}}]}] run clear @p gray_dye{webbing:1}

	#Clear Tertiary Ability Activators
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{stingactivate:1}}]}] run clear @p carrot_on_a_stick{stingactivate:1}