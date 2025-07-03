scoreboard players set @s fish.stat.completion 0





data merge entity @s {text:\
        '[{"text":"Completion: \\n","color":"gold","bold": true},\
        {"score":{"name":"@p[tag=this.player]","objective": "fish.stat.completion"},"color": "white"},\
        {"text":" %","color":"gold"}]'}