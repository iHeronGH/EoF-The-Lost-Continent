#Tag Pantalan
execute as @a unless entity @s[team=!HiveWings,team=!LeafWings,team=!SilkWings,tag=Pantalan] run tag @s add Pantalan
tag @a[team=!HiveWings,team=!LeafWings,team=!SilkWings,tag=Pantalan] remove Pantalan

#Tag Dragon
tag @a[tag=Pantalan,tag=!Dragon] add Dragon
tag @a[tag=!Pyrrhian,tag=!Pantalan,tag=Dragon] remove Dragon