execute store result score music_id fish.temp run random value 1..7

execute if score music_id fish.temp matches 1 run data modify storage fish:temp music.play set from storage fish:main music_list.meadows
execute if score music_id fish.temp matches 2 run data modify storage fish:temp music.play set from storage fish:main music_list.plains
execute if score music_id fish.temp matches 3 run data modify storage fish:temp music.play set from storage fish:main music_list.summer_sands
execute if score music_id fish.temp matches 4 run data modify storage fish:temp music.play set from storage fish:main music_list.accumula_town
execute if score music_id fish.temp matches 5 run data modify storage fish:temp music.play set from storage fish:main music_list.orange_sky
execute if score music_id fish.temp matches 6 run data modify storage fish:temp music.play set from storage fish:main music_list.costa_del_sol
execute if score music_id fish.temp matches 7 run data modify storage fish:temp music.play set from storage fish:main music_list.sunshine_seaside


function fish:music/play with storage fish:temp music.play