scoreboard players set @s fish.item_use 5

scoreboard players add @s fish.rod.reel_charge 1

tag @s add this.right_click

execute as @e[tag=rod] if score @s fish.generic.id = @p[tag=this.right_click] fish.generic.id run tag @s add rod.this

function fish:rod/rc/checks

execute as @e[tag=rod,tag=rod.this] run tag @s remove rod.this

tag @s remove this.right_click