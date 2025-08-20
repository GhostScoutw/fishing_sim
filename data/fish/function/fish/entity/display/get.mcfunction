
data modify storage fish:temp display.fish.item_model set from entity @s item.components."minecraft:item_model"
data modify storage fish:temp display.fish.name set from entity @s item.components."minecraft:item_name"

execute store result storage fish:temp display.fish.randx float 0.1 run random value 0..3600


execute store result storage fish:temp display.fish.randz float 0.1 run random value 0..20
execute store result storage fish:temp display.fish.randy float 0.1 run random value 0..20

function fish:fish/entity/display/create with storage fish:temp display.fish