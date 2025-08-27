
#not holding a fish, block interaction
execute unless items entity @p[tag=this.player] weapon.* *[custom_data~{fish:1b}] run return run tellraw @p[tag=this.player] \
        [{selector:"@n[tag=this.npc]"},{text:">: "},\
        {"text":"Aye, i ain't be buyin' whatever it is that yer' holdin', go get me sum' fresh fish!","color":"red"}]


#tellraw @p[tag=this.player] \
        [{selector:"@n[tag=this.npc]"},{text:">: "},\
        {"text":"Das sum' good fish u got ther' in yer' hands","color":"gold"}]

data modify storage fish:temp sell.value set from entity @p[tag=this.player] SelectedItem.components."minecraft:custom_data".value
data modify storage fish:temp sell.count set from entity @p[tag=this.player] SelectedItem.count
data modify storage fish:temp sell.name set from entity @p[tag=this.player] SelectedItem.components."minecraft:item_name"

function fish:npc/fish_seller/sell with storage fish:temp sell
