
function fish:storage/rod/getdefault

$execute if entity @s[tag=rod.string,tag=rod.bobber] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.bobber.minecraft:custom_data.display_model

$execute if entity @s[tag=rod.handle] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.handle.minecraft:custom_data.display_model
$execute if entity @s[tag=rod.body] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.body.minecraft:custom_data.display_model
$execute if entity @s[tag=rod.reel] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.reel.minecraft:custom_data.display_model
$execute if entity @s[tag=rod.string] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.string.minecraft:custom_data.display_model
$execute if entity @s[tag=rod.line] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.string.minecraft:custom_data.display_model
$execute if entity @s[tag=rod.bobber] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.bobber.minecraft:custom_data.display_model
$execute if entity @s[tag=rod.hook] run return run data modify entity @s item.components."minecraft:item_model" set from storage fish:main player_storage.player$(player_id).components.hook.minecraft:custom_data.display_model


