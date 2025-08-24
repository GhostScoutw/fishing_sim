execute unless score @s fish.rod.line.segment matches -2147483648..2147483647 run return run tellraw @a {"text":"no line segments set","color":"red"}

scoreboard players remove @s fish.rod.line.segment 1

execute unless score @s fish.rod.line.segment matches 0 run summon item_display ~ ~ ~ \
    {item:{components:{item_model:"animated_java:blueprint/fishing_rod/string"},id:"minecraft:popped_chorus_fruit"},\
    Tags:["init","rod.string"],teleport_duration:1,\
    transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}

execute if score @s fish.rod.line.segment matches 0 run summon item_display ~ ~ ~ \
    {item:{components:{item_model:"animated_java:blueprint/fishing_rod/bobber"},id:"minecraft:popped_chorus_fruit"},\
    Tags:["init","rod.string","rod.bobber"],teleport_duration:1,\
    transformation:{left_rotation:[0.0f,0.0f,0.0f,1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},\
    Passengers:[\
        {id:"minecraft:item_display",item:{id:"minecraft:popped_chorus_fruit",components:{item_model:"animated_java:blueprint/fishing_rod/hook"}},\
        Tags:["init","rod.hook"],teleport_duration:1,\
        transformation:{left_rotation:[0.0f,0.0f,0.0f,1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.175f,0.0f]}}]}



scoreboard players operation @n[tag=init,tag=rod.string,tag=!root.string] fish.rod.line.segment = @s fish.rod.line.segment

scoreboard players operation @n[tag=init,tag=rod.string,tag=!root.string] fish.generic.id = @n[tag=this.tip] fish.generic.id
scoreboard players operation @n[tag=init,tag=rod.hook] fish.generic.id = @n[tag=this.tip] fish.generic.id

execute as @e[tag=rod.bobber,tag=init] run function fish:storage/rod/get
execute as @e[tag=!rod.bobber,tag=init,tag=rod.string] run function fish:storage/rod/get
execute as @e[tag=init,tag=rod.hook] run function fish:storage/rod/get

tag @e[tag=init,tag=rod.hook] remove init
tag @e[tag=init,tag=rod.string] remove init


execute if score @s fish.rod.line.segment matches 0 run return run scoreboard players operation @s fish.rod.line.segment = @n[tag=this.tip] fish.rod.line.segment
execute positioned ^ ^ ^ run function fish:rod/line/summon_segments