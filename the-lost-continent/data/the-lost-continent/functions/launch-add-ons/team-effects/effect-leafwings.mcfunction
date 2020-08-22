#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All LeafWings
effect give @a[team=LeafWings] speed 1 0 true
effect clear @a[team=LeafWings,tag=nv] night_vision
tag @a[team=LeafWings,tag=nv] remove nv
execute as @a[team=LeafWings] unless predicate ids-wings-of-fire:check-sunrise-to-sunset unless entity @s[nbt={Health:20f}] run effect give @s[scores={regen=300}] regeneration 3 0 true

#Initialize Scoreboards
execute as @a[team=LeafWings] unless score @s venomAura matches 0..400 run scoreboard players set @s venomAura 0
execute as @a[team=LeafWings] unless score @s regen matches 0..300 run scoreboard players set @s regen 0
scoreboard players add @a[team=LeafWings,scores={regen=0..299},nbt=!{Health:20f}] regen 1
scoreboard players set @a[team=LeafWings,scores={regen=300..},nbt={ActiveEffects:[{Id:10b}]}] regen 1

#Leafspeak Vines
execute at @a[team=LeafWings,predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{leafspeak:1}}}] run function the-lost-continent:loop-required/leafspeak-vines
execute at @e[type=area_effect_cloud,tag=lsVine] if block ~ ~ ~ vine unless entity @p[team=LeafWings,distance=..0.9] run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=lsVine] at @s if block ~ ~ ~ air unless entity @p[team=LeafWings,distance=..0.9] run kill @s

#Venom Aura Effect
execute as @a[team=LeafWings,scores={Attack=1..},nbt={SelectedItem:{tag:{venomaura:1}}}] unless score @s venomAura matches 1.. run scoreboard players set @s venomAura 400
execute as @a[team=LeafWings,scores={venomAura=400}] run title @s actionbar {"text":"Venom Aura is now active!","color":"dark_green","bold":true}
execute as @a[team=LeafWings,scores={venomAura=321..}] at @s run effect give @e[team=!LeafWings,nbt=!{ActiveEffects:[{Id:19b}]},distance=3..7] poison 5 0 true
execute as @a[team=LeafWings,scores={venomAura=321..}] at @s run effect give @e[team=!LeafWings,nbt=!{ActiveEffects:[{Id:19b}]},distance=0.1..3] poison 5 1 true
execute as @a[team=LeafWings,scores={venomAura=320}] run title @s actionbar {"text":"Venom Aura has entered a 16s cooldown!","color":"dark_green","bold":true}
execute as @a[team=LeafWings,scores={venomAura=1..}] run scoreboard players remove @s venomAura 1
execute as @a[team=LeafWings,scores={venomAura=1}] run title @s actionbar {"text":"Venom Aura is no longer in cooldown!","color":"dark_green","bold":true}
execute as @a[team=LeafWings,scores={Attack=1..}] run scoreboard players set @s Attack 0