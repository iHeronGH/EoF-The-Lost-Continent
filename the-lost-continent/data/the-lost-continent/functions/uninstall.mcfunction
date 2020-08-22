#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Uninstall Datapack
function the-lost-continent:silent-uninstall
tellraw @e[type=player] [{"text":"The add-on has sucessfully deleted itself. If you wish to\nreinstall it, you can ","color":"gray"},{"text":"click here","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/the-lost-continent\""}},{"text":" and it will magically reinstall\nitself, or you can type the command "},{"text":"/datapack enable\n\"file/the-lost-continent\"","color":"gold","clickEvent":{"action":"suggest_command","value":"/datapack enable \"file/the-lost-continent\""}},{"text":" to manually reinstall the add-on.\n\nThank you for using my datapack!","color":"gray"}]