#Execute Acid Spray
execute if entity @s[tag=!CoolDown1,nbt={SelectedItem:{tag:{stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["AcidLine","getRot"],Particle:"block air",Duration:25,Radius:0.8f}
execute if entity @s[tag=!CoolDown1] run title @s actionbar {"text":"Acid Spray has entered a 10s cooldown!","bold":true,"color":"gold"}

#Rotate AcidLine
execute as @e[type=area_effect_cloud,tag=AcidLine,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~-8.8
execute as @e[type=area_effect_cloud,tag=AcidLine,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=AcidLine] run particle dust 0.266 0.266 0 2 ^ ^ ^0.66 0 0 0 0.1 3 force
execute as @e[type=area_effect_cloud,tag=AcidLine] at @s run tp @s ^ ^ ^0.95 ~ ~2.27

#Effect Entities
execute as @e[type=area_effect_cloud,tag=AcidLine] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.833] wither 2 2 true
execute as @e[type=area_effect_cloud,tag=AcidLine] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.833] nausea 8 1 true

#If Hit a Block or Hits Entity, kill AcidLine
execute as @e[type=area_effect_cloud,tag=AcidLine] at @s unless block ^ ^ ^0.1 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=AcidLine] at @s positioned ^ ^ ^0.45 positioned ~ ~-1.2 ~ if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.823] run kill @s
	
	#Enter Cooldown
execute if entity @s[tag=!CoolDown1] run schedule function tlc:cooldown-one 200t append