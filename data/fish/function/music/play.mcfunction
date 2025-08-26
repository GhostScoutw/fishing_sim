
$tellraw @a[tag=!music_disabled] [{"text":"Now Playing ","color":"green"},{"text":"[$(name)]",color:aqua,\
    "hover_event":{"action":"show_text","value":[\
        {"text":"Author: ","color":"white"},{"text":"$(author)","color":"aqua"},\
        {"text":"\nTaken from ","color":"white"},{"text":"$(origin)","color":"aqua"},]\
    }\
}]

tellraw @a[tag=!music_disabled,tag=!musicwarn_disabled] [{"text":"[!] ","color":"gold"},{"text":"Some music might be copyrighted, if you do not want the music to play, do ","color":"red"},{"text":"/trigger music_toggle.\nTo disable this warning, do /trigger music_warning","color":"red"}]

function fish:music/stop_all
$playsound $(play_id) record @a[tag=!music_disabled] 0 0 0 1 1 1

$schedule function fish:music/play_random $(duration) replace