#Activate Trail
scoreboard players add @e[distance=0] silkenWebTimer 1
summon area_effect_cloud ~ ~ ~ {Tags:["silkenWebTrail"],Particle:"block air",Duration:100,Radius:0.6f}
execute at @e[type=area_effect_cloud,tag=silkenWebTrail] run particle dust 0.85 0.85 0.85 1 ^ ^ ^ 0 0 0 0.1 1 force
execute at @e[type=area_effect_cloud,tag=silkenWebTrail] run effect give @a[team=SilkWings,tag=!trailactive,distance=..0.75] speed 3 2 true
execute at @e[type=area_effect_cloud,tag=silkenWebTrail] run effect give @e[team=!SilkWings,distance=..0.75] slowness 3 0 true
tag @e[distance=0,limit=1,scores={silkenWebTimer=100}] remove trailactive
scoreboard players set @e[distance=0,limit=1,scores={silkenWebTimer=100}] silkenWebTimer 0