

execute if score @s fish.bobber.bobbing matches ..-1 run tp @s ~ ~-0.02 ~

execute at @s run particle falling_water ~ ~0.5 ~ 0 0.3 0 0 3

execute if score @s fish.bobber.bobbing matches -15 at @s align y run function fish:rod/bobber/physics/caught_wave
execute if score @s fish.bobber.bobbing matches -15 align y if block ~ ~ ~ water run return run tp @s ~ ~0.95 ~
execute if score @s fish.bobber.bobbing matches -15 align y if block ~ ~-0.5 ~ water run return run tp @s ~ ~1.95 ~

execute if score @s fish.bobber.bobbing matches 0 at @s align y run function fish:rod/bobber/physics/caught_wave
execute if score @s fish.bobber.bobbing matches 0 align y if block ~ ~ ~ water run return run tp @s ~ ~0.95 ~
execute if score @s fish.bobber.bobbing matches 0 align y if block ~ ~-0.5 ~ water run return run tp @s ~ ~1.95 ~

execute if score @s fish.bobber.bobbing matches 15 at @s align y run function fish:rod/bobber/physics/caught_wave
execute if score @s fish.bobber.bobbing matches 15 align y if block ~ ~ ~ water run return run tp @s ~ ~0.95 ~
execute if score @s fish.bobber.bobbing matches 15 align y if block ~ ~-0.5 ~ water run return run tp @s ~ ~1.95 ~



execute if score @s fish.bobber.bobbing matches 1.. run tp @s ~ ~-0.02 ~