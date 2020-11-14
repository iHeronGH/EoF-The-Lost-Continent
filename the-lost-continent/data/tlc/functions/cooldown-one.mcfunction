#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Enter Cooldown Ability 1
tag @e[type=player,tag=CoolDownActive1] remove CoolDownActive1

title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=AcidActive] actionbar {"text":"Acid Spray is no longer in cooldown!","bold":true,"color":"gold"}
title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=FuryActive,nbt={Inventory:[{tag:{dartmode:1}}]}] actionbar {"text":"Fury Shift is no longer in cooldown!","bold":true,"color":"dark_green"}
title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=FuryActive,nbt={Inventory:[{tag:{slingmode:1}}]}] actionbar {"text":"Fury Shift is no longer in cooldown!","bold":true,"color":"gold"}
title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=SilkActive] actionbar {"text":"Silk Shot is no longer in cooldown!","bold":true,"color":"gray"}

tag @e[type=player,tag=AcidActive] remove AcidActive
tag @e[type=player,tag=FuryActive] remove FuryActive
tag @e[type=player,tag=SilkActive] remove SilkActive

tag @e[type=player,tag=CoolDown1] remove CoolDown1