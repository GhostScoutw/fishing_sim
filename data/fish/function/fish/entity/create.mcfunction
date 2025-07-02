tag @s add fish.origin

function fish:fish/pool/get

execute as @n[tag=fish.entity,tag=init] run scoreboard players operation @s fish.generic.id = @n[tag=fish.origin] fish.generic.id

execute as @n[tag=fish.entity,tag=init] run tag @s remove init
tag @s remove fish.origin