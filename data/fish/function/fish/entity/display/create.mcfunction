
$summon item_display ~ ~ ~ {\
    interpolation_duration:10,teleport_duration:10,\
    Tags:["fish.display","init"],\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},\
    item:{id:"minecraft:cod",count:1,components:{"minecraft:item_model":"$(item_model)"}},\
        \
        Passengers:[{id:"minecraft:text_display",\
        billboard:"vertical",interpolation_duration:10,teleport_duration:10,background:0,\
        transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0f,1f,0f]},\
        text:[$(name),{"text":"\n"},$(quality)]}],\
    \
    }

$execute as @n[tag=fish.display,tag=init] at @s rotated ~$(randx) ~ run tp @s ^ ^$(randy) ^$(randz)
execute as @n[tag=fish.display,tag=init] run scoreboard players set @s fish.generic.lifetime 60

execute as @n[tag=fish.display,tag=init] run tag @s remove init
