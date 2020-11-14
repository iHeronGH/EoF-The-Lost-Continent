#Clear Secondary Abilities
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{hivemind:1}}]}] run clear @p[distance=0] yellow_dye{hivemind:1}
execute if entity @p[team=!LeafWings,nbt={Inventory:[{tag:{leafspeak:1}}]}] run clear @p[distance=0] lime_dye{leafspeak:1}
execute if entity @p[team=!SilkWings,nbt={Inventory:[{tag:{sense:1}}]}] run clear @p[distance=0] white_dye{sense:1}

	#Clear Secondary Ability Activators
execute if entity @p[team=!HiveWings,nbt={Inventory:[{tag:{hiveactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{hiveactivate:1}
execute if entity @p[team=!LeafWings,nbt={Inventory:[{tag:{speakactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{speakactivate:1}