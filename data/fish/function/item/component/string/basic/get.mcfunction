##if the component doesnt give that stat, just remove the lore line instead of saying it gives 0.
give @s string[\
    item_model="components:blueprint/string/basic_ui",\
    item_name={\
        text:"Commercial Line",color:"green"\
    },\
    lore=[\
        {text:"(STRING COMPONENT)",italic:false,color:"aqua"},\
        {text:""},\
        {text:"A mass produced fishing line, that can be found",italic:false,color:"white"},\
        {text:"in any fishing store. While it is one of the",italic:false,color:"white"},\
        {text:"cheapest ones, its quality is actually horrendous,",italic:false,color:"white"},\
        {text:"but can atleast catch some fish outside of the reefs.",italic:false,color:"white"},\
        \
        {text:"FISHING LINE TIER 1",italic:false,color:"gold"},\
        {text:"",italic:false,color:"white"},\
        {text:"+20 🎣 fishing power",italic:false,color:"blue"},\
        ],\
    max_stack_size=1,\
    custom_data={\
        component_type:"string",\
        location:"string/basic",\
        compset:"commercial",\
        display_model:"components:blueprint/string/basic",\
        addstats:{\
            fishing_power:20,\
            lure_power:0,\
            bait_power:0,\
            sea_blessing:0,\
            luck:0,\
        },\
        specialbehaviour:{\
            any:true,\
            line_tier:1\
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