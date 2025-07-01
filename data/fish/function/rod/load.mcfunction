function animated_java:fishing_rod/summon {args:{}}

execute as @n[tag=aj.fishing_rod.root,tag=!rod] on passengers as @s[nbt={item:{components:\
    {"minecraft:item_model":"animated_java:blueprint/fishing_rod/handle"}}}] run tag @s add rod.handle
execute as @n[tag=aj.fishing_rod.root,tag=!rod] on passengers as @s[nbt={item:{components:\
    {"minecraft:item_model":"animated_java:blueprint/fishing_rod/body"}}}] run tag @s add rod.body
execute as @n[tag=aj.fishing_rod.root,tag=!rod] on passengers as @s[nbt={item:{components:\
    {"minecraft:item_model":"animated_java:blueprint/fishing_rod/string"}}}] run tag @s add rod.string
execute as @n[tag=aj.fishing_rod.root,tag=!rod] on passengers as @s[nbt={item:{components:\
    {"minecraft:item_model":"animated_java:blueprint/fishing_rod/bobber"}}}] run tag @s add rod.bobber
execute as @n[tag=aj.fishing_rod.root,tag=!rod] on passengers as @s[nbt={item:{components:\
    {"minecraft:item_model":"animated_java:blueprint/fishing_rod/hook"}}}] run tag @s add rod.hook
execute as @n[tag=aj.fishing_rod.root,tag=!rod] on passengers as @s[nbt={item:{components:\
    {"minecraft:item_model":"animated_java:blueprint/fishing_rod/reel"}}}] run tag @s add rod.reel



execute as @n[tag=aj.fishing_rod.root,tag=!rod] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id
execute as @n[tag=aj.fishing_rod.root,tag=!rod] run function animated_java:fishing_rod/animations/idle/play

execute as @n[tag=rod.tip,tag=!synced] run scoreboard players operation @s fish.generic.id = @n[tag=this.player] fish.generic.id
execute as @n[tag=rod.tip,tag=!synced] run scoreboard players set @s fish.rod.line.segment 8
execute as @n[tag=rod.tip,tag=!synced] run tag @s add synced

execute as @n[tag=aj.fishing_rod.root,tag=!rod] run tag @s add rod

