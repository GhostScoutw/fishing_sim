function animated_java:fishing_rod/animations/idle/stop
function animated_java:fishing_rod/animations/cast_idle/stop
function animated_java:fishing_rod/animations/casting/stop
function animated_java:fishing_rod/animations/retrieve/stop

execute as @s[tag=rod.this,tag=!aj.fishing_rod.animation.charging.playing] run function animated_java:fishing_rod/animations/charging/play
