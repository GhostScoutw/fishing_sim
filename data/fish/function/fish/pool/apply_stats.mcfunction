
##end roll
execute store result score roll fish.pool.roll run random value 1..1000
scoreboard players operation fishing_power fish.pool.roll = @p[tag=this.player] fish.stat.fishing_power
scoreboard players operation luck fish.pool.roll = @p[tag=this.player] fish.stat.luck

#apply luck

execute if score luck fish.pool.roll matches 1.. run scoreboard players operation luck fish.pool.roll /= 10 fish.constant


execute if score luck fish.pool.roll matches 1.. if score fishing_power fish.pool.roll matches 1.. run scoreboard players operation fishing_power fish.pool.roll *= luck fish.pool.roll


scoreboard players operation roll fish.pool.roll += fishing_power fish.pool.roll

##sea blessing logic

tag @p[tag=blessing_trigger] remove blessing_trigger

execute store result score blessing fish.pool.roll run random value 1..100

execute store result score blessing_stat fish.pool.roll run scoreboard players get @p[tag=this.player] fish.stat.sea_blessing

execute if score blessing_stat fish.pool.roll matches 100.. run scoreboard players set blessing_stat fish.pool.roll 98

scoreboard players operation blessing fish.pool.roll += blessing_stat fish.pool.roll


execute if score blessing fish.pool.roll matches 101.. run scoreboard players add @p[tag=this.player] fish.stat.sea_blessing.stack 1
execute if score blessing fish.pool.roll matches 101.. run tag @p[tag=this.player] add blessing_trigger


execute as @p[tag=this.player] if score @s fish.stat.sea_blessing.stack matches -2147483648..2147483647 \
    unless entity @s[tag=blessing_trigger] run tellraw @s [{"text":"Blessing triggered ","color":"light_purple"},{"score": {"name": "@s","objective": "fish.stat.sea_blessing.stack"}},{"text":" time(s)!"}]

execute as @p[tag=this.player] if score @s fish.stat.sea_blessing.stack matches -2147483648..2147483647 \
    unless entity @s[tag=blessing_trigger] at @s run playsound block.conduit.activate master @s ~ ~ ~ 2

execute as @p[tag=this.player] if score @s fish.stat.sea_blessing.stack matches -2147483648..2147483647 \
    unless entity @s[tag=blessing_trigger] run scoreboard players reset @s fish.stat.sea_blessing.stack
