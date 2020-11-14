#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Uninstall Datapack
function tlc:silent-uninstall
tellraw @e[type=player] [{"text":"The add-on has sucessfully deleted itself. If you wish to\nreinstall it, you can ","color":"gray"},{"text":"click here","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/tlc\""}},{"text":" and it will magically reinstall\nitself, or you can type the command "},{"text":"/datapack enable\n\"file/tlc\"","color":"gold","clickEvent":{"action":"suggest_command","value":"/datapack enable \"file/tlc\""}},{"text":" to manually reinstall the add-on.\n\nThank you for using my datapack!"}]