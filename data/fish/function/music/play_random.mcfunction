execute store result score music_id fish.temp run random value 1..2

execute if score music_id fish.temp matches 1 run data modify storage fish:temp music.play set from storage fish:main music_list.meadows
execute if score music_id fish.temp matches 2 run data modify storage fish:temp music.play set from storage fish:main music_list.plains


function fish:music/play with storage fish:temp music.play