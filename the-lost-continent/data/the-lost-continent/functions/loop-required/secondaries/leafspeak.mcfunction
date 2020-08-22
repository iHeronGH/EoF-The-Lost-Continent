#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?

#Effect Entities
execute if entity @s[tag=!CoolDown2] run effect give @s resistance 6 0 true
execute at @s[tag=!CoolDown2,x_rotation=30..90] run effect give @e[team=!LeafWings,distance=0.1..8] poison 6 0 true
execute at @s[tag=!CoolDown2,x_rotation=-90..-30] run effect give @e[team=!LeafWings,distance=0.1..8] slowness 6 1 true
execute if entity @s[tag=!CoolDown2] run summon area_effect_cloud ~ ~ ~ {Tags:["poisonPoint"],Effects:[{Id:2b,Amplifier:1b,Duration:40,ShowParticles:0b},{Id:19b,Amplifier:3b,Duration:40,ShowParticles:0b}],Particle:"block air",Duration:120,Radius:1.25f}
execute if entity @s[tag=!CoolDown2] run summon area_effect_cloud ~ ~ ~ {Tags:["poisonPoint"],Effects:[{Id:2b,Amplifier:1b,Duration:40,ShowParticles:0b},{Id:19b,Amplifier:2b,Duration:40,ShowParticles:0b}],Particle:"block air",Duration:120,Radius:1.25f}
execute if entity @s[tag=!CoolDown2] run summon area_effect_cloud ~ ~ ~ {Tags:["poisonPoint"],Effects:[{Id:2b,Amplifier:0b,Duration:40,ShowParticles:0b},{Id:19b,Amplifier:2b,Duration:40,ShowParticles:0b}],Particle:"block air",Duration:120,Radius:1.25f}
execute if entity @s[tag=!CoolDown2] run spreadplayers ~ ~ 0 8 false @e[type=area_effect_cloud,distance=..0.1,limit=3]
execute at @e[type=area_effect_cloud,tag=poisonPoint] run particle minecraft:end_rod ~ ~0.3 ~ 0.06 0 0.06 0.04 1 force
execute if entity @s[tag=!CoolDown2] run title @s actionbar {"text":"Leafspeak has entered a 24s cooldown!","bold":true,"color":"green"}

#Enter Cooldown
execute if entity @s[tag=!CoolDownActive2,tag=SpeakActive] run schedule function the-lost-continent:cooldown-two 480t append