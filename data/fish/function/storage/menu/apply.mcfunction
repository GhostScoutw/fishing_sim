
data merge entity @s {item:{id:"string","count":1}}

$data modify storage component:test here set from storage fish:main player_storage.player$(player_id).components.handle

$execute if entity @s[tag=menu.slot.handle] run data modify entity @s item.components set from storage fish:main player_storage.player$(player_id).components.handle
$execute if entity @s[tag=menu.slot.body] run data modify entity @s item.components set from storage fish:main player_storage.player$(player_id).components.body
$execute if entity @s[tag=menu.slot.reel] run data modify entity @s item.components set from storage fish:main player_storage.player$(player_id).components.reel
$execute if entity @s[tag=menu.slot.string] run data modify entity @s item.components set from storage fish:main player_storage.player$(player_id).components.string
$execute if entity @s[tag=menu.slot.bobber] run data modify entity @s item.components set from storage fish:main player_storage.player$(player_id).components.bobber
$execute if entity @s[tag=menu.slot.hook] run data modify entity @s item.components set from storage fish:main player_storage.player$(player_id).components.hook

execute unless data entity @s item.components run data remove entity @s item