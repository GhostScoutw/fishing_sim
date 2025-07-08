
execute unless score @s fish.item_cooldown matches 1.. as @n[tag=rod.this,tag=!aj.fishing_rod.animation.cast_idle.playing,tag=!aj.fishing_rod.animation.charging.playing] at @s run return run function fish:rod/rc/charge_cast

execute unless score @s fish.item_cooldown matches 1.. as @n[tag=rod.this,tag=aj.fishing_rod.animation.cast_idle.playing,tag=!aj.fishing_rod.animation.charging.playing,tag=!aj.fishing_rod.animation.casting.playing] at @s run return run function fish:rod/rc/retrieve
