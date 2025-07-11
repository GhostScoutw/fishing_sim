
execute unless score @s fish.generic.id matches -2147483648..2147483647 run function fish:player/get_id
tag @s add this.player

scoreboard players remove @s[scores={fish.item_use=1..}] fish.item_use 1
scoreboard players remove @s[scores={fish.item_cooldown=1..}] fish.item_cooldown 1

execute as @e[tag=rod] if score @s fish.generic.id = @n[tag=this.player] fish.generic.id run tag @s add this.rod
execute as @e[tag=aj.main_ui.root] if score @s fish.generic.id = @n[tag=this.player] fish.generic.id run tag @s add this.ui


execute as @s[scores={fish.item_use=1}] if items entity @s weapon.mainhand *[custom_data~{rod:1b}] run function fish:rod/release

execute if items entity @s weapon.mainhand *[custom_data~{rod:1b}] unless entity @n[tag=this.rod] run function fish:rod/load

execute store result score item_check fish.config run clear @s *[custom_data~{rod:1b}] 0
execute if score item_check fish.config matches 0 run function fish:rod/give
execute if score item_check fish.config matches 2.. run clear @s *[custom_data~{rod:1b}] 1

execute unless score legiti_exclusive fish.config matches 1.. rotated ~ 0 run tp @n[tag=this.rod] ~ ~2.2 ~ facing ^ ^ ^10
execute unless score legiti_exclusive fish.config matches 1.. run tp @n[tag=this.ui] ~ ~2.2 ~



execute as @n[tag=this.ui] at @s run function fish:menu/tick

execute if score legiti_exclusive fish.config matches 1.. run function fish:legiti_exclusive/rod_ride

tag @e[tag=this.ui] remove this.ui
tag @e[tag=this.rod] remove this.rod

tag @s remove this.player