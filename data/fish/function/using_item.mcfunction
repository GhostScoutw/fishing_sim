advancement revoke @s only fish:using_item

execute if score @s fish.item_cooldown matches 1.. run return fail


execute if items entity @s weapon.mainhand *[custom_data~{rod:1b}] run return run function fish:rod/right_click



scoreboard players set @s fish.item_use 5

