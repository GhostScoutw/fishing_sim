
execute store result score fish.rarity fish.temp run data get entity @s item.components."minecraft:custom_data".rarity


#execute if score fish.rarity fish.temp matches 1 \
    store result entity @s item.components."minecraft:custom_data".value int 1 \
    run return run data get entity @s item.components."minecraft:custom_data".value

execute if score fish.rarity fish.temp matches 2 \
    store result entity @s item.components."minecraft:custom_data".value int 1.2 \
    run return run data get entity @s item.components."minecraft:custom_data".value


execute if score fish.rarity fish.temp matches 3 \
    store result entity @s item.components."minecraft:custom_data".value int 1.5 \
    run return run data get entity @s item.components."minecraft:custom_data".value


execute if score fish.rarity fish.temp matches 4 \
    store result entity @s item.components."minecraft:custom_data".value int 2 \
    run return run data get entity @s item.components."minecraft:custom_data".value


execute if score fish.rarity fish.temp matches 5 \
    store result entity @s item.components."minecraft:custom_data".value int 3 \
    run return run data get entity @s item.components."minecraft:custom_data".value
