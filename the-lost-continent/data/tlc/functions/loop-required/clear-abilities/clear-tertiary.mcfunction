#Clear Tertiary Abilities
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{stingstrike:1}}]}] run clear @p[distance=0] black_dye{stingstrike:1}
execute if entity @p[team=!LeafWings,nbt={Inventory:[{tag:{venomaura:1}}]}] run clear @p[distance=0] green_dye{venomaura:1}
execute if entity @p[team=!SilkWings,nbt={Inventory:[{tag:{webbing:1}}]}] run clear @p[distance=0] gray_dye{webbing:1}

	#Clear Tertiary Ability Activators
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{stingactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{stingactivate:1}