
execute as @a at @s run function fish:player/tick

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{delete_on_ground:1b}}}}]

execute as @e[tag=rod] run function fish:rod/tick


execute as @e[tag=rod.tip] run function fish:rod/tip_check


execute as @e[tag=rod.bobber,tag=!aj.fishing_rod.bone] at @s run function fish:rod/bobber/tick

execute as @e[tag=fish.entity] at @s run function fish:fish/entity/tick
execute as @e[tag=fish.display] at @s run function fish:fish/entity/display/tick

execute as @e[tag=menu.hitbox] at @s run function fish:menu/hitbox/tick

function fish:worldtimers/get