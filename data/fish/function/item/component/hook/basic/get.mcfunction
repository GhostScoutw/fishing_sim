##if the component doesnt give that stat, just remove the lore line instead of saying it gives 0.
give @s string[\
    item_model="components:blueprint/hook/basic_ui",\
    item_name={\
        text:"Pipe Hook",color:"green"\
    },\
    lore=[\
        {text:"(HOOK COMPONENT)",italic:false,color:"aqua"},\
        {text:""},\
        {text:"A broken pipe that baarely resembles the shape",italic:false,color:"white"},\
        {text:"of a hook. It looks like any decent force applied",italic:false,color:"white"},\
        {text:"to this would shatter it into pieces, but oh well,",italic:false,color:"white"},\
        {text:"its better than nothing.",italic:false,color:"white"},\
        \
        {text:"+5 ⛵ sea blessing",italic:false,color:"light_purple"},\
        ],\
    max_stack_size=1,\
    custom_data={\
        component_type:"hook",\
        location:"hook/basic",\
        compset:"pipe",\
        display_model:"components:blueprint/hook/basic",\
        addstats:{\
            fishing_power:0,\
            lure_power:0,\
            bait_power:0,\
            sea_blessing:5,\
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