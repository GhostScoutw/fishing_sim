
tag @s add this.tip

execute as @e[tag=rod] if score @s fish.generic.id = @n[tag=this.tip] fish.generic.id as @n[tag=this.tip] run tag @s add has_owner

execute at @s run function fish:rod/line/tick

#execute as @e[tag=rod.string,scores={fish.rod.line.segment=1}] if score @s fish.generic.id = @n[tag=this.tip] fish.generic.id run data merge entity @s {transformation:{scale:[1.0f,2.0f,1.0f],translation:[0.0f,0.0f,-1.5f]}}

execute unless entity @s[tag=has_owner] run kill @s
tag @s remove has_owner
tag @s remove this.tip