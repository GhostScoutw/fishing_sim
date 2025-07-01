function animated_java:fishing_rod/animations/idle/stop
function animated_java:fishing_rod/animations/cast_idle/stop
function animated_java:fishing_rod/animations/casting/stop
function animated_java:fishing_rod/animations/charging/stop
function animated_java:fishing_rod/animations/retrieve/stop

execute as @s[tag=rod.this] run function animated_java:fishing_rod/animations/retrieve/play
scoreboard players set @n[tag=this.right_click] fish.item_cooldown 50

playsound entity.fishing_bobber.retrieve master @a ~ ~ ~ 1.5 0.5