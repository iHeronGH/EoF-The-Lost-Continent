#Leafspeak Vines
execute if block ~0.5 ~0.45 ~ #tlc:families/natural if block ~ ~0.45 ~ #ids-wings-of-fire:families/airs unless entity @e[type=area_effect_cloud,tag=lsVine,distance=..0.33] run summon area_effect_cloud ~ ~0.45 ~ {Tags:["lsVine","lsVine+x"],Duration:1200}
execute if block ~-0.5 ~0.45 ~ #tlc:families/natural if block ~ ~0.45 ~ #ids-wings-of-fire:families/airs unless entity @e[type=area_effect_cloud,tag=lsVine,distance=..0.33] run summon area_effect_cloud ~ ~0.45 ~ {Tags:["lsVine","lsVine-x"],Duration:1200}
execute if block ~ ~0.45 ~0.5 #tlc:families/natural if block ~ ~0.45 ~ #ids-wings-of-fire:families/airs unless entity @e[type=area_effect_cloud,tag=lsVine,distance=..0.33] run summon area_effect_cloud ~ ~0.45 ~ {Tags:["lsVine","lsVine+z"],Duration:1200}
execute if block ~ ~0.45 ~-0.5 #tlc:families/natural if block ~ ~0.45 ~ #ids-wings-of-fire:families/airs unless entity @e[type=area_effect_cloud,tag=lsVine,distance=..0.33] run summon area_effect_cloud ~ ~0.45 ~ {Tags:["lsVine","lsVine-z"],Duration:1200}
execute at @e[type=area_effect_cloud,tag=lsVine+x] run setblock ~ ~ ~ vine[east=true]
execute at @e[type=area_effect_cloud,tag=lsVine-x] run setblock ~ ~ ~ vine[west=true]
execute at @e[type=area_effect_cloud,tag=lsVine+z] run setblock ~ ~ ~ vine[south=true]
execute at @e[type=area_effect_cloud,tag=lsVine-z] run setblock ~ ~ ~ vine[north=true]