execute store result score fish_roll fish.pool.roll run random value 1..100

execute if score fish_roll fish.pool.roll matches 1..25 run function fish:fish/catalog/uncommon/sturgeon
execute if score fish_roll fish.pool.roll matches 26..50 run function fish:fish/catalog/uncommon/tuna
execute if score fish_roll fish.pool.roll matches 51..75 run function fish:fish/catalog/uncommon/halibut
execute if score fish_roll fish.pool.roll matches 76.. run function fish:fish/catalog/uncommon/black_bass
