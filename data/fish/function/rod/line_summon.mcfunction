#say summoned line
tag @s add line.owner

execute as @e[tag=rod.tip] if score @s fish.generic.id = @n[tag=line.owner] fish.generic.id at @s run tag @s add this.tip

execute as @n[tag=this.tip] at @s run summon item_display ~ ~ ~ \
    {item:{components:{item_model:"animated_java:blueprint/fishing_rod/string"},id:"minecraft:popped_chorus_fruit"},\
    Tags:["init","rod.string","root.string"],teleport_duration:1,\
    transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}


execute as @n[tag=init,tag=root.string] at @n[tag=this.tip] run tp @s ~ ~ ~ facing ^ ^ ^10

execute as @n[tag=init,tag=root.string] run scoreboard players operation @s fish.generic.id = @n[tag=rod.tip] fish.generic.id

execute as @n[tag=init,tag=root.string] run scoreboard players operation @s fish.rod.line.segment = @n[tag=rod.tip] fish.rod.line.segment

execute as @n[tag=init,tag=root.string] at @s positioned ^ ^ ^0.5 run function fish:rod/line/summon_segments


function fish:storage/rod/get
execute as @e[tag=init,tag=root.string] run tag @s remove init
execute as @e[tag=this.tip] run tag @s remove this.tip
tag @s remove line.owner