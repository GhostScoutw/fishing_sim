
#iterating through entire inv, skip if item is not a fish
execute store result storage fish:temp sell.index int 1 run scoreboard players add inventory_idex fish.npc.sell 1

$execute unless data entity @p[tag=this.player] Inventory[$(index)] run return run function fish:npc/fish_seller/sell_all/end with storage fish:temp sell

$execute unless data entity @p[tag=this.player] Inventory[$(index)].components."minecraft:custom_data".fish run return run function fish:npc/fish_seller/sell_all/get_all with storage fish:temp sell


$execute store result score value fish.npc.sell run data get entity @p[tag=this.player] Inventory[$(index)].components."minecraft:custom_data".value
$execute store result score count fish.npc.sell run data get entity @p[tag=this.player] Inventory[$(index)].count

scoreboard players operation value fish.npc.sell *= count fish.npc.sell
execute store result storage fish:temp sell.value int 1 run scoreboard players operation value_all fish.npc.sell += value fish.npc.sell
execute store result storage fish:temp sell.count int 1 run scoreboard players operation count_all fish.npc.sell += count fish.npc.sell


function fish:npc/fish_seller/sell_all/get_all with storage fish:temp sell