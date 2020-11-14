#Grants Buffs
function tlc:loop-required/primaries/fury-shift

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function tlc:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1