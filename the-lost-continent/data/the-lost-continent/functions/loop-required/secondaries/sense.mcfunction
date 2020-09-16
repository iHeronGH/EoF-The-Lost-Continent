#Set Max and Distance Values
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..8,limit=1] unless entity @s[scores={senseDist=8,sense=1..11}] run scoreboard players set @s sense 12
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..8,limit=1] unless entity @s[scores={senseDist=8}] run scoreboard players set @s senseDist 8
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=8.01..16,limit=1] unless entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..8,limit=1] unless entity @s[scores={senseDist=16,sense=1..23}] run scoreboard players set @s sense 24
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=8.01..16,limit=1] unless entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..8,limit=1] unless entity @s[scores={senseDist=16}] run scoreboard players set @s senseDist 16
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=16.01..24,limit=1] unless entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..16,limit=1] unless entity @s[scores={senseDist=24,sense=1..35}] run scoreboard players set @s sense 36
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=16.01..24,limit=1] unless entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..16,limit=1] unless entity @s[scores={senseDist=24}] run scoreboard players set @s senseDist 24
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=24.01..32,limit=1] unless entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..24,limit=1] unless entity @s[scores={senseDist=32,sense=1..47}] run scoreboard players set @s sense 48
execute if entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=24.01..32,limit=1] unless entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..24,limit=1] unless entity @s[scores={senseDist=32}] run scoreboard players set @s senseDist 32
execute unless entity @e[type=#the-lost-continent:hostiles,team=!SilkWings,distance=0.1..32,limit=1] if score @s senseDist matches ..32 run scoreboard players set @s senseDist 0

#Loop Particle
scoreboard players remove @s[scores={sense=1..48}] sense 1
execute if score @s[scores={senseDist=8}] sense matches 0 run scoreboard players set @s sense 12
execute if score @s[scores={senseDist=16}] sense matches 0 run scoreboard players set @s sense 24
execute if score @s[scores={senseDist=24}] sense matches 0 run scoreboard players set @s sense 36
execute if score @s[scores={senseDist=32}] sense matches 0 run scoreboard players set @s sense 48

#Play Particle
execute if entity @s[scores={sense=1}] anchored eyes run particle minecraft:crit ^-0.4 ^0.2 ^0.3 0 0 0 0.01 1 force @s
execute if entity @s[scores={sense=1,senseDist=8}] run playsound minecraft:block.note_block.xylophone block @s ~ ~ ~ 0.15 0.944
execute if entity @s[scores={sense=1,senseDist=16}] run playsound minecraft:block.note_block.xylophone block @s ~ ~ ~ 0.117 0.891
execute if entity @s[scores={sense=1,senseDist=24}] run playsound minecraft:block.note_block.xylophone block @s ~ ~ ~ 0.083 0.794
execute if entity @s[scores={sense=1,senseDist=32}] run playsound minecraft:block.note_block.xylophone block @s ~ ~ ~ 0.05 0.707