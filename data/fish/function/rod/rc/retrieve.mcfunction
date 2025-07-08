
execute as @e[tag=rod.bobber] if score @s fish.bobber.caught matches -2147483648..2147483647 \
    if score @s fish.generic.id = @n[tag=this.right_click] fish.generic.id as @n[tag=this.right_click] as @n[tag=rod.this] at @s run return run function fish:rod/rc/retrieve_caught

function animated_java:fishing_rod/animations/idle/stop
function animated_java:fishing_rod/animations/cast_idle/stop
function animated_java:fishing_rod/animations/casting/stop
function animated_java:fishing_rod/animations/charging/stop
function animated_java:fishing_rod/animations/retrieve/stop

execute as @s[tag=rod.this] run function animated_java:fishing_rod/animations/retrieve/play
scoreboard players set @n[tag=this.right_click] fish.item_cooldown 40


playsound entity.fishing_bobber.retrieve master @a ~ ~ ~ 1.5 0.5