particle trial_spawner_detection_ominous ~ ~1 ~ 0.5 0 0.5 0 20


tag @s add this
execute as @a if score @s fish.generic.id = @n[tag=this] fish.generic.id at @s run playsound entity.fishing_bobber.splash master @a ~ ~15 ~ 0.5 2
tag @s remove this