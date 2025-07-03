tag @s add this.player
function animated_java:main_ui/summon {args:{}}


execute as @n[tag=aj.main_ui.root,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id
execute as @e[tag=menu.hitbox,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id
execute as @e[tag=menu.slot,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id

execute as @e[tag=menu.hitbox,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id

execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.handle_item] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.body_item] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.string_item] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.reel_item] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.hook_item] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.bobber_item] run tag @s add menu.slot

execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.handle_item] run tag @s add menu.slot.handle
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.body_item] run tag @s add menu.slot.body
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.string_item] run tag @s add menu.slot.string
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.reel_item] run tag @s add menu.slot.reel
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.hook_item] run tag @s add menu.slot.hook
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[tag=aj.main_ui.item_display.bobber_item] run tag @s add menu.slot.bobber


execute as @n[tag=aj.main_ui.root,tag=!synced] run function animated_java:main_ui/animations/spawn/play
execute as @n[tag=aj.main_ui.root,tag=!synced] run rotate @s ~ 0

execute as @n[tag=aj.main_ui.root,tag=!synced] run tag @s add menu_gui

execute as @n[tag=aj.main_ui.root,tag=!synced] run tag @s add synced
execute as @e[tag=menu.hitbox,tag=!synced] run tag @s add synced
execute as @e[tag=menu.slot,tag=!synced] run tag @s add synced



tag @s remove this.player