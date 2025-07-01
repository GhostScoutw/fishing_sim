
$data remove storage fish:main player_storage.player$(player_id)


$data modify storage fish:main player_storage.player$(player_id) set value \
\
{\
    rod_equipped:{\
        handle_id:"animated_java:blueprint/fishing_rod/handle",\
        body_id:"animated_java:blueprint/fishing_rod/body",\
        string_id:"animated_java:blueprint/fishing_rod/string",\
        reel_id:"animated_java:blueprint/fishing_rod/reel",\
        bobble_id:"animated_java:blueprint/fishing_rod/bobble",\
        hook_id:"animated_java:blueprint/fishing_rod/hook",\
    }\
}


#from storage fish:main player_storage.player$(player_id).rod_equipped.handle_id