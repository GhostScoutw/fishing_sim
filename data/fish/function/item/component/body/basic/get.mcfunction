##if the component doesnt give that stat, just remove the lore line instead of saying it gives 0.
give @s string[\
    item_model="components:blueprint/body/basic_ui",\
    item_name={\
        text:"Basic Body",color:"green"\
    },\
    lore=[\
        {text:"(BODY COMPONENT)",italic:false,color:"aqua"},\
        {text:""},\
        {text:"A stack of 2 pipes of different lengths and sizes, that",italic:false,color:"white"},\
        {text:"with their terrible quality, makes it flexible enough to",italic:false,color:"white"},\
        {text:"work as a fishing rod body. Doesnt work well, but gets",italic:false,color:"white"},\
        {text:"the job done, better than nothing.",italic:false,color:"white"},\
        \
        {text:"+40 🎣 fishing power",italic:false,color:"blue"},\
        {text:"+15 🐟 lure power",italic:false,color:"dark_aqua"},\
        ],\
    max_stack_size=1,\
    custom_data={\
        component_type:"body",\
        location:"body/basic",\
        compset:"pipe",\
        display_model:"components:blueprint/body/basic",\
        addstats:{\
            fishing_power:40,\
            lure_power:15,\
            bait_power:0,\
            sea_blessing:0,\
            luck:0,\
        },\
        specialbehaviour:{\
            any:false\
        }\
    }\
]
#\
        {text:"+50 🎣 fishing power",italic:false,color:"blue"},\
        {text:"+0 🐟 lure power",italic:false,color:"dark_aqua"},\
        {text:"+0 🪱 bait power",italic:false,color:"yellow"},\
        {text:"+0 ⛵ sea blessing",italic:false,color:"light_purple"},\
        {text:"+0 🪙 luck",italic:false,color:"green"},\

#🎣 fishing power
#🐟 lure power
#🪱 bait power
#⛵ sea blessing
#🪙 luck