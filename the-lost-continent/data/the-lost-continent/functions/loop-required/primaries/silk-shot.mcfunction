#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Execute Silk Shot
execute if entity @s[tag=!CoolDown1,scores={silkMeter=0..3},nbt={SelectedItem:{tag:{stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["SilkLine","snipe","getRot"],Particle:"block air",Duration:25,Radius:0.1f}
execute if entity @s[tag=!CoolDown1,scores={silkMeter=4..5},nbt={SelectedItem:{tag:{stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["SilkLine","burst","burst1","getRot"],Particle:"block air",Duration:25,Radius:0.1f}
execute if entity @s[tag=!CoolDown1,scores={silkMeter=4..5},nbt={SelectedItem:{tag:{stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["SilkLine","burst","burst2","getRot"],Particle:"block air",Duration:25,Radius:0.1f}
execute if entity @s[tag=!CoolDown1,scores={silkMeter=4..5},nbt={SelectedItem:{tag:{stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["SilkLine","burst","burst3","getRot"],Particle:"block air",Duration:25,Radius:0.1f}
execute if entity @s[tag=!CoolDown1,scores={silkMeter=2..}] run title @s actionbar {"text":"Silk Shot has entered a 10s cooldown!","bold":true,"color":"gray"}
execute if entity @s[tag=!CoolDown1,scores={silkMeter=2..}] run scoreboard players remove @s silkMeter 2

#Rotate SilkLine
execute as @e[type=area_effect_cloud,tag=snipe,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~-1
execute as @e[type=area_effect_cloud,tag=burst1,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~-20 ~-1
execute as @e[type=area_effect_cloud,tag=burst2,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~-1
execute as @e[type=area_effect_cloud,tag=burst3,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~20 ~-1
execute as @e[type=area_effect_cloud,tag=SilkLine,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=SilkLine] run particle dust 0.85 0.85 0.85 2 ^ ^ ^0.66 0 0 0 0.1 4 force
execute as @e[type=area_effect_cloud,tag=snipe] at @s run tp @s ^ ^ ^1.05 ~ ~0.4
execute as @e[type=area_effect_cloud,tag=burst] at @s run tp @s ^ ^ ^0.45 ~ ~0.3

#Effect Entities
execute as @e[type=area_effect_cloud,tag=snipe] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.33 ~ run effect give @e[distance=..0.9] slowness 4 2 true
execute as @e[type=area_effect_cloud,tag=snipe] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.33 ~ run effect give @e[distance=..0.9] mining_fatigue 4 0 true
execute as @e[type=area_effect_cloud,tag=snipe] at @s run summon area_effect_cloud ^ ^-0.6 ^0.25 {Effects:[{Id:2b,Amplifier:1b,Duration:40,ShowParticles:0b}],Particle:"block air",Duration:50,Radius:0.525f}
execute as @e[type=area_effect_cloud,tag=burst] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.33 ~ run effect give @e[distance=..0.9] slowness 4 2 true
execute as @e[type=area_effect_cloud,tag=burst] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.33 ~ run effect give @e[distance=..0.9] mining_fatigue 4 1 true
execute as @e[type=area_effect_cloud,tag=burst] at @s run summon area_effect_cloud ^ ^-0.6 ^0.25 {Effects:[{Id:2b,Amplifier:1b,Duration:40,ShowParticles:0b}],Particle:"block air",Duration:60,Radius:0.6f}

#If Hit a Block or Hits Entity, kill SilkLine
execute as @e[type=area_effect_cloud,tag=SilkLine] at @s unless block ^ ^ ^0.1 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=SilkLine] at @s positioned ^ ^ ^0.45 positioned ~ ~-1.33 ~ if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.89] run kill @s

	#Enter Cooldown
execute if entity @s[tag=!CoolDown1] run schedule function the-lost-continent:cooldown-one 200t append