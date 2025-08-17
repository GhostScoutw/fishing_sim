
execute if biome ~ ~ ~ the_void run return run function fish:menu/refresh/completion/void




data merge entity @s {text:\
        [{"text":"Completion: \n","color":"gold","bold": true},\
        {"text":"None","color": "gray"},\
        {"text":" %","color":"gold"}],interpolation_duration:0}