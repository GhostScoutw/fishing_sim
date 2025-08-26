scoreboard players enable @s music_toggle
scoreboard players enable @s[tag=!musicwarn_disabled] music_warning

execute if score @s music_toggle matches 1.. run function fish:player/triggers/music_toggle
execute if score @s music_warning matches 1.. run function fish:player/triggers/music_warning
