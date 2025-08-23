execute store result storage component:temp player_id int 1 run scoreboard players get @p[tag=this.player] fish.generic.id

execute as @s[type=item_display] run function fish:storage/menu/apply with storage component:temp

execute as @s[type=item_display] on passengers as @s[type=item_display] run function fish:storage/menu/apply with storage component:temp