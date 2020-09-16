#Effect All SilkWings
effect give @a[team=SilkWings] speed 1 0 true
effect clear @a[team=SilkWings,tag=nv] night_vision
tag @a[team=SilkWings,tag=nv] remove nv

#Init Launch of Silk Meter
execute as @a[team=SilkWings] unless score @s silkMeter matches 0..5 run scoreboard players set @s silkMeter 0
execute as @a[team=SilkWings] unless score @s silkMeterTimer matches 0..160 run scoreboard players set @s silkMeterTimer 0

#Reset Sense Score
execute as @a[team=SilkWings,nbt=!{SelectedItem:{tag:{sense:1}}}] run scoreboard players set @s sense 0
execute as @a[team=SilkWings,nbt=!{SelectedItem:{tag:{sense:1}}}] run scoreboard players set @s senseDist 0

#Silken Web Recharge Silk Meter
execute as @a[team=SilkWings,scores={silkMeter=0..4}] run scoreboard players add @s silkMeterTimer 1
execute as @a[team=SilkWings,scores={silkMeter=0..4,silkMeterTimer=160}] run scoreboard players add @s silkMeter 1
execute as @a[team=SilkWings,scores={silkMeter=0..4,silkMeterTimer=160}] run scoreboard players set @s silkMeterTimer 0
execute as @a[team=SilkWings,scores={silkMeter=0..4,silkMeterTimer=96},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{webbing:1}}}] unless score @s silkMeterTimer matches 97..160 run scoreboard players add @s silkMeter 1
execute as @a[team=SilkWings,scores={silkMeter=0..4,silkMeterTimer=96},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{webbing:1}}}] unless score @s silkMeterTimer matches 97..160 run scoreboard players set @s silkMeterTimer 0
execute as @a[team=SilkWings,scores={silkMeter=5}] run scoreboard players set @s silkMeterTimer 0

#Silken Web Effect 1
execute as @a[team=SilkWings,nbt={SelectedItem:{tag:{webbing:1}}},scores={Attack=1..}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:2b}]},distance=0.1..4] slowness 2 0 true

#Silken Web Effect 2
execute as @a[team=SilkWings,nbt={SelectedItem:{tag:{webbing:1}}},scores={Attack=1..,silkMeter=2..5}] unless entity @s[scores={silkenWeb=1..}] run scoreboard players set @s silkenWeb 400
execute at @a[team=SilkWings,nbt={SelectedItem:{tag:{webbing:1}}},scores={Attack=1..,silkenWeb=400}] run tag @e[tag=!trailactive,nbt=!{HurtTime:0s},distance=0.1..4,limit=1] add trailactive
#execute as @a[team=SilkWings,nbt={SelectedItem:{tag:{webbing:1}}},scores={Attack=1..,silkenWeb=400}] run function the-lost-continent:loop-required/silken-web-trail
execute at @e[tag=trailactive] unless score @e[distance=0,limit=1] silkenWebTimer matches 100 run function the-lost-continent:loop-required/silken-web-trail
execute as @a[team=SilkWings,nbt={SelectedItem:{tag:{webbing:1}}},scores={Attack=1..,silkenWeb=400}] run scoreboard players remove @s silkMeter 2
execute as @a[team=SilkWings,scores={Attack=1..}] run scoreboard players set @s Attack 0
execute as @a[team=SilkWings,scores={silkenWeb=1..}] run scoreboard players remove @s silkenWeb 1