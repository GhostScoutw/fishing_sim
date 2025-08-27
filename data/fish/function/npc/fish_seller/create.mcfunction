execute align xyz run summon villager ~0.5 ~ ~0.5 {\
    Tags:["init","npc","fish_seller","npc_component"],\
    NoAI:true,\
    Invulnerable:true,\
        VillagerData:{\
            profession:"butcher",\
            type:"desert"\
            },\
        Passengers:[\
            {id:"text_display",\
                Tags:["init","npc_name","npc_component"],\
                text:\
                    [{"text":"Fish Seller","color":"aqua"}],\
                    \
                transformation:{\
                    left_rotation:[0.0f,0.0f,0.0f,1.0f],\
                    right_rotation:[0.0f,0.0f,0.0f,1.0f],\
                    \
                    scale:[1.0f,1.0f,1.0f],\
                    translation:[0.0f,0.5f,0.0f]},\
                \
                background:0,billboard:"vertical"\
            }\
        ]\
    }

execute align xyz run summon interaction ~0.5 ~ ~0.5 {\
    Tags:["init","npc_hitbox","npc_component"],\
    height:2.1f, width:0.8f,\
    response:true,\
    \
        data:{\
            left_click:"function fish:npc/fish_seller/left_click",\
            right_click:"function fish:npc/fish_seller/right_click"}}


data modify entity @n[tag=npc,tag=init] CustomName set from entity @n[tag=npc_name,tag=init] text

execute as @n[tag=npc,tag=init] run function fish:npc/get_id

scoreboard players operation @e[tag=npc_component,tag=init] fish.npc.id = @n[tag=npc,tag=init] fish.npc.id

tag @e[tag=npc_component,tag=init] remove init