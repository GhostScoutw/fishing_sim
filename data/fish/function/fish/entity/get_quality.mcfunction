#quality 1 check
execute store result score quality_roll fish.pool.roll run random value 0..100
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches ..49 run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 1
execute if score quality_roll fish.pool.roll matches ..49 run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★☆☆☆☆","color":"gold","italic":false}

#quality 2 check
execute if score quality_roll fish.pool.roll matches 50.. store result score quality_roll fish.pool.roll run random value 50..200
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 50..189 run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 2
execute if score quality_roll fish.pool.roll matches 50..189 run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★☆☆☆","color":"gold","italic":false}

#quality 3 check
execute if score quality_roll fish.pool.roll matches 190.. store result score quality_roll fish.pool.roll run random value 190..400
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 190..389 run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 3
execute if score quality_roll fish.pool.roll matches 190..389 run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★★☆☆","color":"gold","italic":false}

#quality 4 check
execute if score quality_roll fish.pool.roll matches 390.. store result score quality_roll fish.pool.roll run random value 390..1000
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 390..990 run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 4
execute if score quality_roll fish.pool.roll matches 390..990 run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★★★☆","color":"gold","italic":false}

#quality 5 check
execute if score quality_roll fish.pool.roll matches 991.. store result score quality_roll fish.pool.roll run random value 991..1000
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 991.. run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 5
execute if score quality_roll fish.pool.roll matches 991.. run return run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★★★★★","color":"gold","italic":false}


#random ass error where it doesnt apply quality, keep this here to make sure it does
execute unless data entity @s item.components."minecraft:custom_data".quality run data modify entity @s \
    item.components.minecraft:lore append value {"text":"★☆☆☆☆","color":"gold","italic":false}
execute unless data entity @s item.components."minecraft:custom_data".quality run data modify entity @s \
    item.components."minecraft:custom_data".quality set value 1
