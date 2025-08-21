

tag @s add this.interaction

execute as @e[tag=menu_gui] if score @s fish.generic.id = @n[tag=this.interaction] fish.generic.id run tag @s add this.menu

execute on target if score @s fish.generic.id = @n[tag=this.interaction] fish.generic.id run tag @s add this.player

execute on target as @s[tag=!this.player] run tellraw @s {"text":"This menu does not belong to you!","color":"red"}
execute on target as @s[tag=!this.player] at @s run playsound block.stone_button.click_off master @s ~ ~ ~ 0.5 0.5

execute if entity @p[tag=this.player] run function fish:menu/hitbox/check_pass

tag @a[tag=this.player] remove this.player
execute as @e[tag=this.menu] run tag @s remove this.menu
tag @s remove this.interaction
data remove entity @s interaction