#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Clear Primary Abilities
execute if entity @a[team=!HiveWings,nbt={Inventory:[{tag:{acidspray:1}}]}] run clear @a[team=!HiveWings,nbt={Inventory:[{tag:{acidspray:1}}]}] orange_dye{acidspray:1}
execute if entity @a[team=!LeafWings,nbt={Inventory:[{tag:{furyshift:1}}]}] run clear @a[team=!LeafWings,nbt={Inventory:[{tag:{furyshift:1}}]}] brown_dye{furyshift:1}
execute if entity @a[team=!SilkWings,nbt={Inventory:[{tag:{silkshot:1}}]}] run clear @a[team=!SilkWings,nbt={Inventory:[{tag:{silkshot:1}}]}] light_gray_dye{silkshot:1}

	#Clear Primary Ability Activators
execute if entity @a[team=!HiveWings,nbt={Inventory:[{tag:{acidactivate:1}}]}] run clear @a[team=!HiveWings,nbt={Inventory:[{tag:{acidactivate:1}}]}] carrot_on_a_stick{acidactivate:1}
execute if entity @a[team=!LeafWings,nbt={Inventory:[{tag:{furytoggle:1}}]}] run clear @a[team=!LeafWings,nbt={Inventory:[{tag:{furytoggle:1}}]}] carrot_on_a_stick{furytoggle:1}
execute if entity @a[team=!LeafWings,nbt={Inventory:[{tag:{furyactivate:1}}]}] run clear @a[team=!LeafWings,nbt={Inventory:[{tag:{furyactivate:1}}]}] carrot_on_a_stick{furyactivate:1}

#Clear Secondary Abilities
execute if entity @a[team=!HiveWings,nbt={Inventory:[{tag:{hivemind:1}}]}] run clear @a[team=!HiveWings,nbt={Inventory:[{tag:{hivemind:1}}]}] yellow_dye{hivemind:1}
execute if entity @a[team=!LeafWings,nbt={Inventory:[{tag:{leafspeak:1}}]}] run clear @a[team=!LeafWings,nbt={Inventory:[{tag:{leafspeak:1}}]}] lime_dye{leafspeak:1}
execute if entity @a[team=!SilkWings,nbt={Inventory:[{tag:{sense:1}}]}] run clear @a[team=!SilkWings,nbt={Inventory:[{tag:{sense:1}}]}] white_dye{sense:1}

	#Clear Secondary Ability Activators
execute if entity @a[team=!HiveWings,nbt={Inventory:[{tag:{hiveactivate:1}}]}] run clear @a[team=!HiveWings,nbt={Inventory:[{tag:{hiveactivate:1}}]}] carrot_on_a_stick{hiveactivate:1}
execute if entity @a[team=!LeafWings,nbt={Inventory:[{tag:{speakactivate:1}}]}] run clear @a[team=!LeafWings,nbt={Inventory:[{tag:{speakactivate:1}}]}] carrot_on_a_stick{speakactivate:1}

#Clear Tertiary Abilities
execute if entity @a[team=!HiveWings,nbt={Inventory:[{tag:{stingstrike:1}}]}] run clear @a[team=!HiveWings,nbt={Inventory:[{tag:{stingstrike:1}}]}] black_dye{stingstrike:1}
execute if entity @a[team=!LeafWings,nbt={Inventory:[{tag:{venomaura:1}}]}] run clear @a[team=!LeafWings,nbt={Inventory:[{tag:{venomaura:1}}]}] green_dye{venomaura:1}
execute if entity @a[team=!SilkWings,nbt={Inventory:[{tag:{webbing:1}}]}] run clear @a[team=!SilkWings,nbt={Inventory:[{tag:{webbing:1}}]}] gray_dye{webbing:1}

	#Clear Tertiary Ability Activators
execute if entity @a[team=!HiveWings,nbt={Inventory:[{tag:{stingactivate:1}}]}] run clear @a[team=!HiveWings,nbt={Inventory:[{tag:{stingactivate:1}}]}] carrot_on_a_stick{stingactivate:1}