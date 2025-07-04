execute store result score fish_roll fish.pool.roll run random value 1..100

execute if score fish_roll fish.pool.roll matches 1.. run function fish:fish/catalog/common/test

