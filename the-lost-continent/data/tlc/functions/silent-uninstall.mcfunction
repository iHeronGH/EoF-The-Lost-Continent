#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Uninstall Datapack
function tlc:launch-add-ons/delete/delete-scoreboard
function tlc:launch-add-ons/delete/delete-teams
clear @e[type=player,tag=Pantalan] #ids-wings-of-fire:leather-armour{tribearmor:1}
function tlc:launch-add-ons/delete/delete-tags
execute as @e[type=player,tag=Pantalan] run function tlc:loop-required/clear-abilities/clear-all
datapack disable "file/tlc"
scoreboard players set thelostcontinent dlc 0
scoreboard players set dlcavailable dlc 0