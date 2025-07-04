
function fish:fish/pool/apply_stats

#tier 1 checks
execute if score roll fish.pool.roll matches 1..700 run function fish:fish/pool/void/common
execute if score roll fish.pool.roll matches 701..900 run function fish:fish/pool/void/uncommon
execute if score roll fish.pool.roll matches 951..1000 run function fish:fish/pool/void/rare
execute if score roll fish.pool.roll matches 1001..1025 run function fish:fish/pool/void/epic
execute if score roll fish.pool.roll matches 1026..1030 run function fish:fish/pool/void/legendary

#tier 2 checks
execute if score roll fish.pool.roll matches 1031..1100 run function fish:fish/pool/void/rare
execute if score roll fish.pool.roll matches 1101..1425 run function fish:fish/pool/void/epic
execute if score roll fish.pool.roll matches 1426.. run function fish:fish/pool/void/legendary


execute if entity @p[tag=this.player,tag=blessing_trigger] run function fish:fish/pool/void/check
