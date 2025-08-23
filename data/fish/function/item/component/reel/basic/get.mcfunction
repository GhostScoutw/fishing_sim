##if the component doesnt give that stat, just remove the lore line instead of saying it gives 0.
give @s string[\
    item_model="components:blueprint/reel/basic_ui",\
    item_name={\
        text:"Basic Reel",color:"green"\
    },\
    lore=[\
        {text:"(REEL COMPONENT)",italic:false,color:"aqua"},\
        {text:""},\
        {text:"A repurposed pipe segment that someone yanked from",italic:false,color:"white"},\
        {text:"a wall. Since its kinda round, you thought it would",italic:false,color:"white"},\
        {text:"work pretty well as a reel. You were wrong. Still",italic:false,color:"white"},\
        {text:"better than nothing tho.",italic:false,color:"white"},\
        \
        {text:"+10 🐟 lure power",italic:false,color:"dark_aqua"},\
        ],\
    max_stack_size=1,\
    custom_data={\
        component_type:"reel",\
        location:"reel/basic",\
        compset:"pipe",\
        display_model:"components:blueprint/reel/basic",\
        addstats:{\
            fishing_power:0,\
            lure_power:10,\
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