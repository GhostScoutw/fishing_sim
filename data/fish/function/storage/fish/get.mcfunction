
execute store result storage fish:temp player_id int 1 run scoreboard players get @p[tag=this.player] fish.generic.id
$data modify storage fish:temp fish_model set value "$(fish)"
function fish:storage/fish/apply with storage fish:temp