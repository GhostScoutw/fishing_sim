execute if entity @n[tag=block_cast] run return run tag @n[tag=block_cast] remove block_cast

execute as @e[tag=menu_gui] if score @s fish.generic.id = @n[tag=this.release] fish.generic.id run return fail


execute as @e[tag=rod.bobber,scores={fish.bobber.caught=1..}] if score @s fish.generic.id = @n[tag=this.release] fish.generic.id run return fail

function animated_java:fishing_rod/animations/charging/stop
function animated_java:fishing_rod/animations/idle/stop
function animated_java:fishing_rod/animations/casting/play

scoreboard players set @n[tag=this.release] fish.item_cooldown 50

playsound entity.fishing_bobber.throw master @a ~ ~ ~ 2 0.5
playsound entity.breeze.whirl master @a ~ ~ ~ 2 1.5