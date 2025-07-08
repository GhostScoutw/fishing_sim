execute store result score fish_roll fish.pool.roll run random value 26..100

execute if score fish_roll fish.pool.roll matches 1..25 run function fish:fish/catalog/legendary/test
execute if score fish_roll fish.pool.roll matches 26..50 run function fish:fish/catalog/legendary/oarfish
execute if score fish_roll fish.pool.roll matches 51..75 run function fish:fish/catalog/legendary/dirtfish
execute if score fish_roll fish.pool.roll matches 76.. run function fish:fish/catalog/legendary/chicken_jockeyfish

