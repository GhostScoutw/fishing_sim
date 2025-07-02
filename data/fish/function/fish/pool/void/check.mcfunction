
execute store result score roll fish.pool.roll run random value 1..1000

execute if score roll fish.pool.roll matches 1.. run return run function fish:fish/catalog/cod