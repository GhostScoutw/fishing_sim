#data modify storage fish:temp fish.id set from entity @n[tag=this.fish] item.id
#data modify storage fish:temp fish.item_name set from entity @n[tag=this.fish] item.components."minecraft:item_name"
#data modify storage fish:temp fish.lore set from entity @n[tag=this.fish] item.components.minecraft:lore
#data modify storage fish:temp fish.custom_data set from entity @n[tag=this.fish] item.components.minecraft:custom_data
#data modify storage fish:temp fish.glint set from entity @n[tag=this.fish] item.components."minecraft:enchantment_glint_override"
#data modify storage fish:temp fish.item_model set from entity @n[tag=this.fish] item.components.minecraft:item_model



$give @s $(id)[item_name='$(item_name)',lore=$(lore),custom_data=$(custom_data),enchantment_glint_override=$(glint),item_model="$(item_model)"]


$function fish:storage/fish/get {fish:"$(item_model)"}

$tellraw @s [{"text":"[","color": "dark_gray"},{"text":"+1","color": "gold"},{"text":"] ","color": "dark_gray"},$(item_name)]
scoreboard players add @s fish.stat.total_caught 1
kill @n[tag=this.fish]


