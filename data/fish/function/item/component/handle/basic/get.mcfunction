##if the component doesnt give that stat, just remove the lore line instead of saying it gives 0.
give @s string[\
    item_model="components:blueprint/handle/basic_ui",\
    item_name={\
        text:"Pipe Handle",color:"green"\
    },\
    lore=[\
        {text:"(HANDLE COMPONENT)",italic:false,color:"aqua"},\
        {text:""},\
        {text:"A handle made of a random copper pipe someone found,",italic:false,color:"white"},\
        {text:"and although its really uncomfortable to hold, its still",italic:false,color:"white"},\
        {text:"better than nothing.",italic:false,color:"white"},\
        {text:"",italic:false,color:"white"},\
        \
        {text:"+50 🎣 fishing power",italic:false,color:"blue"},\
        ],\
    max_stack_size=1,\
    custom_data={\
        component_type:"handle",\
        location:"handle/basic",\
        compset:"pipe",\
        display_model:"components:blueprint/handle/basic",\
        addstats:{\
            fishing_power:50,\
            lure_power:0,\
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