
scoreboard players reset music.rec fish.worldtimers

execute as @a[tag=!music_disabled] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.5 0.5

tellraw @a[tag=!music_disabled] {"text":"Like the music playing? Feel free to recommend any game soundtracks that you think would fit that vibe!","color":"gold"}
