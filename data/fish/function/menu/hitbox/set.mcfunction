$tellraw @p[tag=this.player] [{"text":"Replacing $(component_type) slot with ","color":"aqua"},$(item_name)]
item replace entity @p[tag=this.player] weapon.mainhand with air

playsound entity.item_frame.add_item master @p[tag=this.player] ~ ~ ~ 2 0.5

execute if data entity @s item.components run function fish:menu/hitbox/retrieve with entity @s item.components.minecraft:custom_data

execute unless data entity @s item run data merge entity @s {item:{id:"minecraft:string",count:1}}


$data modify entity @s item.components set value {\
    "minecraft:item_name":$(item_name),\
    "minecraft:item_model":"$(item_model)",\
    "minecraft:lore":$(lore),\
    "minecraft:max_stack_size":$(max_stack_size),\
    "minecraft:custom_data":{\
        component_type:$(component_type),\
        compset_id:$(compset_id),\
        location:"$(location)",\
        display_model:"$(display_model)",\
        addstats:$(addstats),\
        specialbehaviour:$(specialbehaviour),\
    },\
}


$data modify storage fish:main player_storage.player$(player_id).components.$(component_type) set from entity @s item.components