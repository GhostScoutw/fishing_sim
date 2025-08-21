#quality 1 check
execute store result score quality_roll fish.pool.roll run random value 0..100
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches ..49 run tag @s add quality_1

#quality 2 check
execute if score quality_roll fish.pool.roll matches 50.. store result score quality_roll fish.pool.roll run random value 50..200
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 50..189 run tag @s add quality_2

#quality 3 check
execute if score quality_roll fish.pool.roll matches 190.. store result score quality_roll fish.pool.roll run random value 190..400
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 190..389 run tag @s add quality_3

#quality 4 check
execute if score quality_roll fish.pool.roll matches 390.. store result score quality_roll fish.pool.roll run random value 390..1000
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 390..990 run tag @s add quality_4

#quality 5 check
execute if score quality_roll fish.pool.roll matches 990.. store result score quality_roll fish.pool.roll run random value 990..1000
scoreboard players operation quality_roll fish.pool.roll += @p[tag=this.player] fish.stat.bait_power

execute if score quality_roll fish.pool.roll matches 990.. run tag @s add quality_5


function fish:fish/entity/apply_quality