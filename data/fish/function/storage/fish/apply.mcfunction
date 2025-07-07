
$execute store result score fish_count fish.config \
     run data get storage \
    fish:main player_storage.player$(player_id).fish_caught.$(fish_model)

scoreboard players add fish_count fish.config 1

$execute store result storage fish:main player_storage.player$(player_id).fish_caught.$(fish_model) int 1 \
    run scoreboard players get fish_count fish.config


scoreboard players reset fish_count fish.config