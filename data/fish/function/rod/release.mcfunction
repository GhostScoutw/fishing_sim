
tag @s add this.release

execute as @e[tag=rod] if score @s fish.generic.id = @p[tag=this.release] fish.generic.id run tag @s add rod.this

execute as @n[tag=rod.this,tag=!aj.fishing_rod.animation.retrieve.playing] at @s run function fish:rod/release/cast

execute as @e[tag=rod,tag=rod.this] run tag @s remove rod.this

tag @s remove this.release