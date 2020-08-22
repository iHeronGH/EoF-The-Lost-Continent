#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Execute Fury Shift
execute if entity @s[tag=!CoolDown1,nbt={SelectedItem:{tag:{dartmode:1,stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["FuryLine","PoisonLine","getRot"],Particle:"block air",Duration:12,Radius:1f}
execute if entity @s[tag=!CoolDown1,nbt={SelectedItem:{tag:{slingmode:1,stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["FuryLine","SapLine","getRot"],Particle:"block air",Duration:20,Radius:1f}
execute if entity @s[tag=!CoolDown1,nbt={SelectedItem:{tag:{dartmode:1}}}] run title @s actionbar {"text":"Fury Shift has entered a 10s cooldown!","bold":true,"color":"dark_green"}
execute if entity @s[tag=!CoolDown1,nbt={SelectedItem:{tag:{slingmode:1}}}] run title @s actionbar {"text":"Fury Shift has entered a 10s cooldown!","bold":true,"color":"gold"}

#Rotate FuryLine
execute as @e[type=area_effect_cloud,tag=PoisonLine,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=SapLine,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~-9.75
tag @e[type=area_effect_cloud,tag=FuryLine,tag=getRot] remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=PoisonLine] run particle dust 0.2 0.275 0.15 2 ^ ^ ^0.66 0 0 0 0.1 3 force
execute at @e[type=area_effect_cloud,tag=SapLine] run particle dust 0.265 0.2 0.15 5 ^ ^ ^0.66 0 0 0 0.1 3 force
execute as @e[type=area_effect_cloud,tag=PoisonLine] at @s run tp @s ^ ^ ^1.5
execute as @e[type=area_effect_cloud,tag=SapLine] at @s run tp @s ^ ^ ^0.9 ~ ~3.3

#Effect Entities
execute at @e[type=area_effect_cloud,tag=PoisonLine] positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.75] poison 3 1 true
execute at @e[type=area_effect_cloud,tag=SapLine] positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.9] slowness 4 2 true
execute at @e[type=area_effect_cloud,tag=SapLine] positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.9] weakness 4 0 true

#If Hit a Block or Hits Entity, kill FuryLine
execute at @e[type=area_effect_cloud,tag=SapLine] unless block ^ ^0.1 ^0.1 #ids-wings-of-fire:families/projectile-immune unless entity @e[type=area_effect_cloud,tag=SapPool,distance=..1] run summon area_effect_cloud ~ ~0.33 ~ {Tags:["SapPool"],Particle:"block air",Effects:[{Id:2b,Amplifier:1b,Duration:50,ShowParticles:0b}],Duration:60,Radius:2.5f}
execute at @e[type=area_effect_cloud,tag=SapPool] run particle dust 0.265 0.2 0.15 5 ~ ~0.45 ~ 1 0 1 0.01 2 force
execute as @e[type=area_effect_cloud,tag=FuryLine] at @s unless block ^ ^0.1 ^0.1 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=FuryLine] at @s positioned ^ ^ ^0.45 positioned ~ ~-1.2 ~ if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.99] run kill @s

	#Enter Cooldown
execute if entity @s[tag=!CoolDown1] run schedule function the-lost-continent:cooldown-one 200t append