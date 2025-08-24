
$tellraw @a [{"text":"Now Playing ","color":"green"},{"text":"[$(name)]",color:aqua,\
    "hover_event":{"action":"show_text","value":[\
        {"text":"Author: ","color":"white"},{"text":"$(author)","color":"aqua"},\
        {"text":"\nTaken from ","color":"white"},{"text":"$(origin)","color":"aqua"},]\
    }\
}]

function fish:music/stop_all

$playsound $(play_id) record @a 0 0 0 100000 1

$schedule function fish:music/play_random $(duration) replace