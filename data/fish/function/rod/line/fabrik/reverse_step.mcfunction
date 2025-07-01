tag @s remove line.target
tag @s remove line.previous

tag @s add me
execute as @e[tag=these.strings] if score @s fish.rod.line.segment = @n[tag=me] fish.rod.line.target run tag @s add line.target
execute as @e[tag=these.strings] if score @s fish.rod.line.target = @n[tag=me] fish.rod.line.segment run tag @s add line.previous


#execute if score @s fish.rod.line.segment matches 1 as @n[tag=rod.string,scores={fish.rod.line.segment=0}] run tag @s add line.target
#execute if score @s fish.rod.line.segment matches 2 as @n[tag=rod.string,scores={fish.rod.line.segment=1}] run tag @s add line.target
#execute if score @s fish.rod.line.segment matches 3 as @n[tag=rod.string,scores={fish.rod.line.segment=2}] run tag @s add line.target
#execute if score @s fish.rod.line.segment matches 4 as @n[tag=rod.string,scores={fish.rod.line.segment=3}] run tag @s add line.target
#execute if score @s fish.rod.line.segment matches 5 as @n[tag=rod.string,scores={fish.rod.line.segment=4}] run tag @s add line.target

#tellraw @a [{"text":" string n"},{"score": {"name": "@s","objective": "fish.rod.line.segment"}},{"text":" targetting"},{"score": {"name": "@n[tag=line.target]","objective": "fish.rod.line.segment"}}]

rotate @s facing entity @n[tag=line.target]

execute at @n[tag=line.target] facing entity @s eyes run tp @s ^ ^ ^1.5

execute as @e[tag=line.target] run tag @s remove line.target


tag @s remove me

tag @s remove line.target
tag @s remove line.previous



execute as @n[tag=line.previous] at @s run function fish:rod/line/fabrik/reverse_step
