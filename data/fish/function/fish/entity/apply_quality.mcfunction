
execute if entity @s[tag=quality_5] run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 5
execute if entity @s[tag=quality_5] run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★★★★","color":"gold"}


execute if entity @s[tag=quality_4] run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 4
execute if entity @s[tag=quality_4] run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★★★☆","color":"gold"}


execute if entity @s[tag=quality_3] run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 3
execute if entity @s[tag=quality_3] run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★★☆☆","color":"gold"}


execute if entity @s[tag=quality_2] run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 2
execute if entity @s[tag=quality_2] run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★☆☆☆","color":"gold"}


execute if entity @s[tag=quality_1] run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 1
execute if entity @s[tag=quality_1] run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★☆☆☆☆","color":"gold"}


