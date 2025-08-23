
execute if entity @s[tag=rod.handle] run data modify entity @s item.components."minecraft:item_model" set value "animated_java:blueprint/fishing_rod/handle"
execute if entity @s[tag=rod.body] run data modify entity @s item.components."minecraft:item_model" set value "animated_java:blueprint/fishing_rod/body"
execute if entity @s[tag=rod.reel] run data modify entity @s item.components."minecraft:item_model" set value "animated_java:blueprint/fishing_rod/reel"
execute if entity @s[tag=rod.string] run data modify entity @s item.components."minecraft:item_model" set value "animated_java:blueprint/fishing_rod/string"
execute if entity @s[tag=rod.line] run data modify entity @s item.components."minecraft:item_model" set value "animated_java:blueprint/fishing_rod/string"
execute if entity @s[tag=rod.bobber] run data modify entity @s item.components."minecraft:item_model" set value "animated_java:blueprint/fishing_rod/bobber"
execute if entity @s[tag=rod.hook] run data modify entity @s item.components."minecraft:item_model" set value "animated_java:blueprint/fishing_rod/hook"

#{\
    rod_equipped:{\
        handle_id:"animated_java:blueprint/fishing_rod/handle",\
        body_id:,\
        string_id:,\
        reel_id:,\
        bobble_id:",\
        hook_id:,\
    }\
}
