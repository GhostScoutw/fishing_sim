##if the component doesnt give that stat, just remove the lore line instead of saying it gives 0.
give @s string[\
    item_model="components:blueprint/handle/basic_ui",\
    item_name={\
        text:"Basic Handle",color:"green"\
    },\
    lore=[\
        {text:"(HANDLE COMPONENT)",italic:false,color:"aqua"},\
        {text:""},\
        {text:"basic handle description. Here, you are supposed",italic:false,color:"white"},\
        {text:"to maybe give some background to the rod, or also",italic:false,color:"white"},\
        {text:"just wordify what stats it changes or detail a special",italic:false,color:"white"},\
        {text:"behaviour it exhibits, like fishing through ice for example.",italic:false,color:"white"},\
        \
        {text:"+0 🎣 fishing power",italic:false,color:"blue"},\
        {text:"+0 🐟 lure power",italic:false,color:"dark_aqua"},\
        {text:"+0 🪱 bait power",italic:false,color:"yellow"},\
        {text:"+0 ⛵ sea blessing",italic:false,color:"light_purple"},\
        {text:"+0 🪙 luck",italic:false,color:"green"},\
        ],\
    max_stack_size=1,\
    custom_data={\
        component_type:"handle",\
        location:"handle/basic",\
        compset_id:1,\
        display_model:"components:blueprint/handle/basic",\
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

#🎣 fishing power
#🐟 lure power
#🪱 bait power
#⛵ sea blessing
#🪙 luck