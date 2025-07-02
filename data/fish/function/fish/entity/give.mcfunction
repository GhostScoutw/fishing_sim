
data modify storage fish:temp fish.id set from entity @n[tag=this.fish] item.id
data modify storage fish:temp fish.item_name set from entity @n[tag=this.fish] item.components."minecraft:item_name"
data modify storage fish:temp fish.lore set from entity @n[tag=this.fish] item.components.minecraft:lore
data modify storage fish:temp fish.custom_data set from entity @n[tag=this.fish] item.components.minecraft:custom_data



function fish:fish/entity/give_apply with storage fish:temp fish

