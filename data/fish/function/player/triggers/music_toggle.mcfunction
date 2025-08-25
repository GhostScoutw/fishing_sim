scoreboard players reset @s music_toggle

execute if entity @s[tag=music_disabled] run tellraw @s \
    {"text":"Music enabled. It will begin playing at the start of next song.","color":"green"}

execute if entity @s[tag=music_disabled] run return run tag @s remove music_disabled

stopsound @s record
tellraw @s \
    {"text":"Music has been disabled. If you just thought it was loud, u can change its volume on the jukebox/noteblock sound slider.","color":"red"}

tag @s add music_disabled