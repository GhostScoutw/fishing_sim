
execute if score @s fish.bobber.bobbing matches ..-1 run tp @s ~ ~-0.005 ~

execute if score @s fish.bobber.bobbing matches 0 align y if block ~ ~ ~ water run return run tp @s ~ ~0.95 ~
execute if score @s fish.bobber.bobbing matches 0 align y if block ~ ~-0.5 ~ water run return run tp @s ~ ~ ~

execute if score @s fish.bobber.bobbing matches 1 run function fish:rod/bobber/apply_stats

execute if score @s fish.bobber.bobbing matches 1.. run tp @s ~ ~0.005 ~