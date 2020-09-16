#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Run Datapack
	#Run Tribes
execute if entity @a[team=HiveWings] run function the-lost-continent:loop-required/run-tribes/run-hivewings
execute if entity @a[team=LeafWings] run function the-lost-continent:loop-required/run-tribes/run-leafwings
execute if entity @a[team=SilkWings] run function the-lost-continent:loop-required/run-tribes/run-silkwings

	#Tag Tribe Members
function the-lost-continent:loop-required/silk-meter
function the-lost-continent:loop-required/generate-tags/team-tags

	#Discourage Ability Dispersion
execute if entity @a[tag=!Dragon] run function the-lost-continent:loop-required/clear-abilities/clear-all

	#Generate Hotbars
execute if entity @a[tag=Pantalan,tag=!abilToggOff] run function the-lost-continent:loop-required/generate-tags/check-upgrades/check-tribe-upgrades