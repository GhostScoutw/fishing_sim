
##end caught_progress
execute store result score caught_progress fish.pool.roll run random value 1..1000
scoreboard players operation lure_power fish.pool.roll = @p[tag=this.player] fish.stat.lure_power
scoreboard players operation bait_power fish.pool.roll = @p[tag=this.player] fish.stat.bait_power


scoreboard players operation caught_progress fish.pool.roll += lure_power fish.pool.roll
#apply bait_power


execute if score caught_progress fish.pool.roll matches 500.. unless score bait_power fish.pool.roll matches 7.. run scoreboard players add @s fish.bobber.caught_progress 7
execute if score caught_progress fish.pool.roll matches 500.. if score bait_power fish.pool.roll matches 7.. run scoreboard players operation @s fish.bobber.caught_progress += bait_power fish.pool.roll