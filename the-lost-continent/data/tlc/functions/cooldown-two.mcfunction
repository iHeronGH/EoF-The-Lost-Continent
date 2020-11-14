#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Enter Cooldown Ability 2
tag @e[type=player,tag=CoolDownActive2] remove CoolDownActive2

title @a[team=HiveWings,tag=!CoolDownActive2,tag=CoolDown2,tag=HiveActive] actionbar {"text":"Hive Mind is no longer in cooldown!","bold":true,"color":"yellow"}
title @a[team=LeafWings,tag=!CoolDownActive2,tag=CoolDown2,tag=SpeakActive] actionbar {"text":"Leafspeak is no longer in cooldown!","bold":true,"color":"green"}

tag @e[type=player,team=HiveWings,tag=HiveActive] remove HiveActive
tag @e[type=player,team=LeafWings,tag=SpeakActive] remove SpeakActive

tag @e[type=player,tag=CoolDown2] remove CoolDown2