
execute store result storage fish:temp player_id int 1 run scoreboard players get @s fish.generic.id

execute as @s[type=item_display] run function fish:storage/rod/apply with storage fish:temp

execute as @s[type=item_display] on passengers as @s[type=item_display] run function fish:storage/rod/apply with storage fish:temp