#Toggle Fury Shift
	#Switch to Sling Mode
replaceitem entity @s[tag=dartMode] hotbar.6 brown_dye{display:{Name:'{"text":"Fury Shift","color":"gold","bold":true,"italic":false}',Lore:['{"text":"[Sneak] + [Use] to","color":"dark_gray"}','{"text":"activate Fury Shift!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Sap Sling","color":"gold"}']},furyshift:1,slingmode:1,primary:1,stock:1}
title @s[tag=dartMode] actionbar [{"text":"Sling mode activated!","color":"gold","bold":true}]
tag @s[tag=dartMode] remove dartMode

	#Switch to Dart Mode
replaceitem entity @s[tag=slingMode] hotbar.6 brown_dye{display:{Name:'{"text":"Fury Shift","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"[Sneak] + [Use] to","color":"dark_gray"}','{"text":"activate Fury Shift!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Poison Dart","color":"dark_green"}']},furyshift:1,dartmode:1,primary:1,stock:1}
title @s[tag=slingMode] actionbar [{"text":"Dart mode activated!","color":"dark_green","bold":true}]
tag @s[tag=slingMode] remove slingMode

tag @s[tag=toggleFury] remove toggleFury