tag @s add fish.origin

function fish:fish/pool/get

execute as @e[tag=fish.entity,tag=init] run scoreboard players operation @s fish.generic.id = @n[tag=fish.origin] fish.generic.id
execute as @e[tag=fish.entity,tag=init] at @s run function fish:fish/entity/get_quality
execute as @e[tag=fish.entity,tag=init] at @s run function fish:fish/entity/quality_value_set
execute as @e[tag=fish.entity,tag=init] at @s run function fish:fish/entity/display/get
execute as @e[tag=fish.entity,tag=init] run tag @s remove init
tag @s remove fish.origin