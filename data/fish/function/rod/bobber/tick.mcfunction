
execute unless score @s fish.rod.reel_charge matches 1.. if block ~ ~-0.15 ~ air run tp @s ~ ~-0.15 ~
tag @s add this.bobber

execute as @e[tag=rod.string,scores={fish.rod.line.segment=1}] if score @s fish.generic.id = @n[tag=this.bobber] fish.generic.id run tag @s add this.anchor
execute as @a if score @s fish.generic.id = @n[tag=this.bobber] fish.generic.id run tag @s add this.player



execute at @s if entity @n[tag=this.anchor,distance=1..] run tp @s @n[tag=this.anchor]


function fish:rod/bobber/physics/get
rotate @s ~ 0

execute at @s if block ~ ~-0.15 ~ water unless score @s fish.rod.reel_charge matches 1.. run function fish:rod/bobber/physics/in_water


execute as @p[tag=this.player] run tag @s remove this.player
execute as @e[tag=rod.string,scores={fish.rod.line.segment=1},tag=this.anchor] run tag @s remove this.anchor
tag @s remove this.bobber