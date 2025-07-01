
$execute if entity @s[tag=rod.handle] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).rod_equipped.handle_id
$execute if entity @s[tag=rod.body] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).rod_equipped.body_id
$execute if entity @s[tag=rod.reel] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).rod_equipped.reel_id
$execute if entity @s[tag=rod.string] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).rod_equipped.string_id
$execute if entity @s[tag=rod.line] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).rod_equipped.string_id
$execute if entity @s[tag=rod.bobber] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).rod_equipped.bobber_id
$execute if entity @s[tag=rod.hook] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).rod_equipped.hook_id
