execute store result score fish_roll fish.pool.roll run random value 26..100

execute if score fish_roll fish.pool.roll matches 1..25 run function fish:fish/catalog/rare/test
execute if score fish_roll fish.pool.roll matches 26..50 run function fish:fish/catalog/epic/fish
execute if score fish_roll fish.pool.roll matches 51..75 run function fish:fish/catalog/epic/chickenfish
execute if score fish_roll fish.pool.roll matches 76.. run function fish:fish/catalog/epic/heartfish
