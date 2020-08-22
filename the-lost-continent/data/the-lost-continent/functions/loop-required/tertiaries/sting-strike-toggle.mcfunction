#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Toggle Sting Strike
	#Switch to Paralysis Needle
replaceitem entity @s[tag=poisonMode] hotbar.8 black_dye{display:{Name:'{"text":"Sting Strike","color":"white","bold":true,"italic":false}',Lore:['{"text":"[Attack] with this item to","color":"dark_gray"}','{"text":"activate Sting Strike!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Paralysis Needle","color":"white"}']},stingstrike:1,paralysismode:1,tertiary:1,HideFlags:63} 1
title @s[tag=poisonMode] actionbar ["",{"text":"Paralysis Needle activated!","color":"white","bold":true}]
tag @s[tag=poisonMode] remove poisonMode

	#Switch to Poison Needle
replaceitem entity @s[tag=paralysisMode] hotbar.8 black_dye{display:{Name:'{"text":"Sting Strike","color":"white","bold":true,"italic":false}',Lore:['{"text":"[Attack] with this item to","color":"dark_gray"}','{"text":"activate Sting Strike!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Poison Needle","color":"white"}']},stingstrike:1,poisonmode:1,tertiary:1,HideFlags:63} 1
title @s[tag=paralysisMode] actionbar {"text":"Poison Needle activated!","color":"white","bold":true}
tag @s[tag=paralysisMode] remove paralysisMode

tag @s[tag=toggleSting] remove toggleSting