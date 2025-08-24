#say killed line
tag @s add line.owner

execute as @e[tag=rod.tip] if score @s fish.generic.id = @n[tag=line.owner] fish.generic.id at @s run tag @s add this.tip


execute as @e[tag=rod.string] if score @s fish.generic.id = @n[tag=line.owner] fish.generic.id on passengers run kill @s
execute as @e[tag=rod.string] if score @s fish.generic.id = @n[tag=line.owner] fish.generic.id run kill @s
function fish:storage/rod/get
execute as @e[tag=this.tip] run tag @s remove this.tip
tag @s remove line.owner