execute unless score @s fish.bobber.bobbing matches -2147483648..2147483647 run scoreboard players set @s fish.bobber.bobbing -20

scoreboard players add @s fish.bobber.bobbing 1

execute unless score @s fish.bobber.caught matches -2147483648..2147483647 run function fish:rod/bobber/physics/bobbing


execute if score @s fish.bobber.caught matches 1.. run function fish:rod/bobber/physics/bobbing_caught

execute if score @s fish.bobber.caught matches 1.. run scoreboard players remove @s fish.bobber.caught 1

execute if score @s fish.bobber.caught matches 0 run scoreboard players reset @s fish.bobber.caught_progress
execute if score @s fish.bobber.caught matches 0 run scoreboard players reset @s fish.bobber.caught


execute if score @s fish.bobber.bobbing matches 20.. run scoreboard players set @s fish.bobber.bobbing -20


#execute unless score @s fish.bobber.caught matches 1.. run scoreboard players add @s fish.bobber.caught_progress 1
execute if score @s fish.bobber.caught_progress matches 100.. unless score @s fish.bobber.caught matches -2147483648..2147483647 at @s run function fish:rod/bobber/caught_wave
execute if score @s fish.bobber.caught_progress matches 100.. unless score @s fish.bobber.caught matches -2147483648..2147483647 run scoreboard players set @s fish.bobber.caught 60