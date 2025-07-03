scoreboard players set @s fish.item_cooldown 50

tag @s add this.menu_rc

execute as @e[tag=menu_gui] if score @s fish.generic.id = @p[tag=this.menu_rc] fish.generic.id run tag @s add exists

execute unless entity @n[tag=exists] run function fish:menu/create
execute unless entity @n[tag=exists] run tag @s add block_cast

execute if entity @n[tag=exists] run tag @s add block_cast
execute if entity @n[tag=exists] as @n[tag=exists] at @s run function fish:menu/kill_this


execute if entity @n[tag=exists] run tag @n[tag=exists] remove exists


tag @s remove this.menu_rc
