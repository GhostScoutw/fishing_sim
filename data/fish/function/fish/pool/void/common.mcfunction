execute store result score fish_roll fish.pool.roll run random value 26..100

execute if score fish_roll fish.pool.roll matches 1..25 run function fish:fish/catalog/common/test
execute if score fish_roll fish.pool.roll matches 26..50 run function fish:fish/catalog/common/anchovy
execute if score fish_roll fish.pool.roll matches 51..75 run function fish:fish/catalog/common/yellow_perch
execute if score fish_roll fish.pool.roll matches 76.. run function fish:fish/catalog/common/surgeonfish