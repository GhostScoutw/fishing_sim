tag @s add this.bobber

execute as @a if score @s fish.generic.id = @n[tag=this.bobber] fish.generic.id run tag @s add this.thrower

execute unless score @s fish.physics.rotx matches -2147483648..2147483647 store result score @s fish.physics.rotx run data get entity @n[tag=this.thrower] Rotation[0]
execute unless score @s fish.physics.rotz matches -2147483648..2147483647 store result score @s fish.physics.rotz run data get entity @n[tag=this.thrower] Rotation[1]

execute if score @p[tag=this.thrower] fish.rod.reel_charge matches 40.. run scoreboard players set @p[tag=this.thrower] aj.charging.frame 40
execute unless score @s fish.rod.reel_charge matches -2147483648..2147483647 store result score @s fish.rod.reel_charge run scoreboard players get @n[tag=this.thrower] fish.rod.reel_charge

scoreboard players reset @p[tag=this.thrower] fish.rod.reel_charge

execute store result storage fish:temp physics.rotx int 1 run scoreboard players get @s fish.physics.rotx
execute store result storage fish:temp physics.rotz int 1 run scoreboard players get @s fish.physics.rotz
execute store result storage fish:temp physics.reel_charge float 0.01 run scoreboard players get @s fish.rod.reel_charge

execute if score @s fish.rod.reel_charge matches 1.. run function fish:rod/bobber/physics/apply_rot with storage fish:temp physics

execute as @a[tag=this.thrower] run tag @s remove this.thrower
tag @s remove this.bobber