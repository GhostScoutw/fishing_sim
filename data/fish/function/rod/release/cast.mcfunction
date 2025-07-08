execute if entity @n[tag=block_cast] run return run tag @n[tag=block_cast] remove block_cast

execute as @e[tag=menu_gui] if score @s fish.generic.id = @n[tag=this.release] fish.generic.id run return fail

execute if score @p[tag=this.release] fish.rod.reel_charge matches ..15 run function animated_java:fishing_rod/animations/charging/stop
execute if score @p[tag=this.release] fish.rod.reel_charge matches ..15 run function animated_java:fishing_rod/animations/idle/play
execute if score @p[tag=this.release] fish.rod.reel_charge matches ..15 run return run tellraw @p[tag=this.release] {"text":"Hold right click to charge your throw strength!","color":"red"}


execute as @e[tag=rod.bobber,scores={fish.bobber.caught=1..}] if score @s fish.generic.id = @n[tag=this.release] fish.generic.id run return fail

function animated_java:fishing_rod/animations/charging/stop
function animated_java:fishing_rod/animations/idle/stop
function animated_java:fishing_rod/animations/casting/play

scoreboard players set @n[tag=this.release] fish.item_cooldown 40

playsound entity.fishing_bobber.throw master @a ~ ~ ~ 2 0.5
playsound entity.breeze.whirl master @a ~ ~ ~ 2 1.5