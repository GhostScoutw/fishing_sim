##if the component doesnt give that stat, just remove the lore line instead of saying it gives 0.
give @s string[\
    item_model="components:blueprint/bobber/basic_ui",\
    item_name={\
        text:"Basic Bobber",color:"green"\
    },\
    lore=[\
        {text:"(BOBBER COMPONENT)",italic:false,color:"aqua"},\
        {text:""},\
        {text:"A 4 way pipe segment that you are pretty sure",italic:false,color:"white"},\
        {text:"its just made out of cardboard and painted like",italic:false,color:"white"},\
        {text:"a real pipe. Otherwise, how else would it float?",italic:false,color:"white"},\
        {text:"",italic:false,color:"white"},\
        {text:"Bobbers are cosmetic, but still count towards set effects.",italic:false,color:"gray"},\
        \
        ],\
    max_stack_size=1,\
    custom_data={\
        component_type:"bobber",\
        location:"bobber/basic",\
        compset:"pipe",\
        display_model:"components:blueprint/bobber/basic",\
        addstats:{\
            fishing_power:0,\
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