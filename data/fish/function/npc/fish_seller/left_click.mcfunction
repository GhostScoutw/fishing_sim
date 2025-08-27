

execute unless items entity @p[tag=this.player] weapon.* *[custom_data~{fish:1b}] run return run tellraw @p[tag=this.player] \
        [{selector:"@n[tag=this.npc]"},{text:">: "},\
        {"text":"Left click me to sell your entire inventory","color":"red"}]

scoreboard players set value fish.npc.sell 0
scoreboard players set count fish.npc.sell 0
scoreboard players set value_all fish.npc.sell 0
execute store result storage fish:temp sell.index int 1 run scoreboard players set inventory_idex fish.npc.sell 0

function fish:npc/fish_seller/sell_all/get_all with storage fish:temp sell

