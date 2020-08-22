#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Runs Help
scoreboard players enable @a help-tlc
execute if entity @a[scores={help-tlc=1..}] run tellraw @a[scores={help-tlc=1..}] [{"text":"- ","color":"dark_gray","bold":true},{"text":"Help ","color":"yellow","bold":true},{"text":"-\n","color":"dark_gray","bold":true},{"text":"Hover over or click each section to view the help!\n\n","color":"gray","bold":false},{"text":"- ","color":"dark_gray"},{"text":"Tome of the Dragons","color":"gold","clickEvent":{"action":"run_command","value":"/function the-lost-continent:launch-add-ons/guide"}}]
execute if entity @a[scores={help-tlc=1..}] run scoreboard players set @a[scores={help-tlc=1..}] help-tlc 0