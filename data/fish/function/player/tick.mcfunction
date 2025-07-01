
execute unless score @s fish.generic.id matches -2147483648..2147483647 run function fish:player/get_id
tag @s add this.player

scoreboard players remove @s[scores={fish.item_use=1..}] fish.item_use 1
scoreboard players remove @s[scores={fish.item_cooldown=1..}] fish.item_cooldown 1

execute as @e[tag=rod] if score @s fish.generic.id = @n[tag=this.player] fish.generic.id run tag @s add this.rod

execute as @s[scores={fish.item_use=1}] if items entity @s weapon.mainhand *[custom_data~{rod:1b}] run function fish:rod/release
#execute as @s[scores={fish.item_use=..0}] run scoreboard players reset @s fish.rod.reel_charge

execute if items entity @s weapon.mainhand *[custom_data~{rod:1b}] unless entity @n[tag=this.rod] run function fish:rod/load

execute unless score legiti_exclusive fish.config matches 1.. rotated ~ 0 run tp @n[tag=this.rod] ~ ~-1.8 ~ facing ^ ^ ^10
execute if score legiti_exclusive fish.config matches 1.. run function fish:legiti_exclusive/rod_ride
tag @e[tag=this.rod] remove this.rod

tag @s remove this.player