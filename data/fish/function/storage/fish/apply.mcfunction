


$execute unless data storage fish:main player_storage.player$(player_id).fish_caught[{id:"$(fish_model)"}] \
    run data modify storage fish:main player_storage.player$(player_id).fish_caught append value {id:"$(fish_model)",count:0}

$execute store result score fish_count fish.config \
     run data get storage \
    fish:main player_storage.player$(player_id).fish_caught[{id:"$(fish_model)"}].count

scoreboard players add fish_count fish.config 1

$execute store result storage fish:main player_storage.player$(player_id).fish_caught[{id:"$(fish_model)"}].count int 1 \
    run scoreboard players get fish_count fish.config


scoreboard players reset fish_count fish.config