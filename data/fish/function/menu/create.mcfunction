tag @s add this.player
function animated_java:main_ui/summon {args:{}}


execute as @n[tag=aj.main_ui.root,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id
execute as @e[tag=menu.hitbox,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id
execute as @e[tag=menu.slot,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id

execute as @e[tag=menu.hitbox,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id

execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:bamboo"}}] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:acacia_door"}}] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:orange_dye"}}] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:netherite_axe"}}] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:diamond"}}] run tag @s add menu.slot
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:purple_dye"}}] run tag @s add menu.slot


execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:bamboo"}}] run tag @s add menu.slot.handle
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:acacia_door"}}] run tag @s add menu.slot.string
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:orange_dye"}}] run tag @s add menu.slot.body
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:netherite_axe"}}] run tag @s add menu.slot.bobber
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:diamond"}}] run tag @s add menu.slot.reel
execute as @n[tag=aj.main_ui.root,tag=!synced] on passengers as @s[nbt={item:{id:"minecraft:purple_dye"}}] run tag @s add menu.slot.hook

execute as @n[tag=aj.main_ui.root,tag=!synced] run function animated_java:main_ui/animations/spawn/play
execute as @n[tag=aj.main_ui.root,tag=!synced] run rotate @s ~ 0

execute as @n[tag=aj.main_ui.root,tag=!synced] run tag @s add menu_gui

execute as @n[tag=aj.main_ui.root,tag=!synced] run tag @s add synced
execute as @e[tag=menu.hitbox,tag=!synced] run tag @s add synced
execute as @e[tag=menu.slot,tag=!synced] run tag @s add synced



tag @s remove this.player