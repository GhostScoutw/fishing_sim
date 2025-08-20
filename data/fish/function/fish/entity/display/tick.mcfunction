
scoreboard players remove @s[scores={fish.generic.lifetime=1..}] fish.generic.lifetime 1

execute at @s run tp @s ~ ~0.05 ~ ~5 ~
execute if score @s fish.generic.lifetime matches 58 on passengers run data merge entity @s {transformation:{scale:[0.6f,1.0f,0.6f]}}
execute if score @s fish.generic.lifetime matches 58 run data merge entity @s {transformation:{scale:[0.6f,0.6f,0.6f]}}
#execute if score @s fish.generic.lifetime matches 58 at @s run tp @s ~ ~2 ~


execute if score @s fish.generic.lifetime matches 10 on passengers run data merge entity @s {transformation:{scale:[0.0f,1.0f,0.0f]}}
execute if score @s fish.generic.lifetime matches 10 run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]}}

execute if score @s fish.generic.lifetime matches 0 on passengers run kill @s
execute if score @s fish.generic.lifetime matches 0 run kill @s