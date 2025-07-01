tag @s add this

execute as @a if items entity @s weapon.mainhand *[custom_data~{rod:1b}] if score @s fish.generic.id = @n[tag=this] fish.generic.id run tag @n[tag=this] add dont_delete

execute unless entity @s[tag=model_loaded] run function fish:storage/rod/get
tag @s add model_loaded

execute unless entity @s[tag=dont_delete] run function fish:rod/line_kill
execute unless entity @s[tag=dont_delete] run function animated_java:fishing_rod/remove/this


tag @s remove dont_delete
tag @s remove this