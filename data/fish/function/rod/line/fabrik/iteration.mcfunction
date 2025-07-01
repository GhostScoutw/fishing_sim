tag @s add ik.origin
execute as @e[tag=rod.string,tag=!aj.fishing_rod.bone] if score @s fish.generic.id = @n[tag=ik.origin] fish.generic.id run tag @s add these.strings

#restraint
execute as @e[tag=these.strings,tag=!rod.bobber] at @s run tp @s ~ ~-0.1 ~

#bobber to start

execute as @e[tag=these.strings,tag=!rod.bobber] run scoreboard players operation @s fish.rod.line.target = @s fish.rod.line.segment

execute as @e[tag=these.strings,tag=!rod.bobber] run scoreboard players remove @s fish.rod.line.target 1

execute as @n[scores={fish.rod.line.target=0},tag=these.strings] at @s run function fish:rod/line/fabrik/step



#start to bobber

execute as @e[tag=these.strings,tag=!rod.bobber] run scoreboard players operation @s fish.rod.line.target = @s fish.rod.line.segment

execute as @e[tag=these.strings,tag=!rod.bobber] run scoreboard players add @s fish.rod.line.target 1

execute as @n[tag=these.strings,tag=root.string] at @s run rotate @s facing entity @n[tag=ik.origin]

execute as @n[tag=these.strings,tag=root.string] at @n[tag=ik.origin] rotated as @s run tp @s ^ ^ ^-1.5

execute as @e[tag=these.strings] if score @s fish.rod.line.target = @n[tag=root.string,tag=these.strings] fish.rod.line.segment at @s run function fish:rod/line/fabrik/reverse_step









execute as @e[tag=these.strings] run tag @s remove these.strings
tag @s remove ik.origin