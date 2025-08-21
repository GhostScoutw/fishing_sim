data remove storage fish:temp fish

data modify storage fish:temp fish.id set from entity @n[tag=this.fish] item.id
data modify storage fish:temp fish.item_name set from entity @n[tag=this.fish] item.components."minecraft:item_name"
data modify storage fish:temp fish.lore set from entity @n[tag=this.fish] item.components.minecraft:lore
data modify storage fish:temp fish.custom_data set from entity @n[tag=this.fish] item.components.minecraft:custom_data
data modify storage fish:temp fish.glint set from entity @n[tag=this.fish] item.components."minecraft:enchantment_glint_override"
data modify storage fish:temp fish.item_model set from entity @n[tag=this.fish] item.components.minecraft:item_model

execute unless data storage fish:temp fish.id run data modify storage fish:temp fish.id set value "minecraft:cod"
execute unless data storage fish:temp fish.item_name run data modify storage fish:temp fish.item_name set value {"text":"Cod"}
execute unless data storage fish:temp fish.lore run data modify storage fish:temp fish.lore set value []
execute unless data storage fish:temp fish.custom_data run data modify storage fish:temp fish.custom_data set value {}
execute unless data storage fish:temp fish.glint run data modify storage fish:temp fish.glint set value false
execute unless data storage fish:temp fish.item_model run data modify storage fish:temp fish.item_model set value "minecraft:cod"



function fish:fish/entity/give_apply with storage fish:temp fish

