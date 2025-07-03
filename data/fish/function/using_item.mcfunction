advancement revoke @s only fish:using_item

execute if score @s fish.item_cooldown matches 1.. run return fail
tag @s add this.player

execute as @e[tag=menu_gui] if score @s fish.generic.id = @p[tag=this.player] fish.generic.id run tag @s add menu_exists


#execute as @n[tag=menu_exists] at @s run function fish:menu/kill_this

execute if items entity @s weapon.mainhand *[custom_data~{rod:1b}] if predicate fish:sneaking run function fish:rod/rc/menu

execute if items entity @s weapon.mainhand *[custom_data~{rod:1b}] unless entity @n[tag=menu_exists] run function fish:rod/right_click


tag @e[tag=menu_exists] remove menu_exists
tag @s remove this.player



scoreboard players set @s fish.item_use 5

