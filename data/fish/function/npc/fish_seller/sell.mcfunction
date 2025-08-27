$scoreboard players set value fish.npc.sell $(value)
$scoreboard players set count fish.npc.sell $(count)

scoreboard players operation value fish.npc.sell *= count fish.npc.sell

$title @p[tag=this.player] actionbar [\
    {"text":"Sold ","color":"gold"},{"text":"$(count) ",color:"green"},\
    $(name),{"text":" for a total of "},{score:{name:"value",objective:"fish.npc.sell"},"color":"yellow"},\
    {"text":" Coins","color":"gold"}]


execute if score value fish.npc.sell matches 1..100 run playsound block.chain.place master @p[tag=this.player] ~ ~ ~ 1 1.5

execute if score value fish.npc.sell matches 100..400 run playsound block.chain.place master @p[tag=this.player] ~ ~ ~ 1 1

execute if score value fish.npc.sell matches 500.. run playsound block.chain.place master @p[tag=this.player] ~ ~ ~ 1 0.5

execute if score value fish.npc.sell matches 1000.. run playsound block.chain.place master @p[tag=this.player] ~ ~ ~ 1 0.5
execute if score value fish.npc.sell matches 1000.. run playsound entity.player.levelup master @p[tag=this.player] ~ ~ ~ 0.5 0.5


execute if score value fish.npc.sell matches 1..100 as @p[tag=this.player] at @s run particle dust_color_transition{from_color:[1.000,0.867,0.000],scale:1,to_color:[1.000,0.725,0.451]} ~ ~0.5 ~ 0.7 0.7 0.7 1 10 normal @s
execute if score value fish.npc.sell matches 100..500 as @p[tag=this.player] at @s run particle dust_color_transition{from_color:[1.000,0.867,0.000],scale:1,to_color:[1.000,0.725,0.451]} ~ ~0.5 ~ 0.7 0.7 0.7 1 20 normal @s
execute if score value fish.npc.sell matches 500..1000 as @p[tag=this.player] at @s run particle dust_color_transition{from_color:[1.000,0.867,0.000],scale:1,to_color:[1.000,0.725,0.451]} ~ ~0.5 ~ 0.7 0.7 0.7 1 40 normal @s
execute if score value fish.npc.sell matches 1000.. as @p[tag=this.player] at @s run particle dust_color_transition{from_color:[1.000,0.867,0.000],scale:1,to_color:[1.000,0.725,0.451]} ~ ~0.5 ~ 0.7 0.7 0.7 1 100 normal @s

scoreboard players operation @p[tag=this.player] fish.stat.coins += value fish.npc.sell

item replace entity @p[tag=this.player] weapon.mainhand with air