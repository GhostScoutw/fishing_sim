tag @s add this.hitbox

execute as @e[tag=aj.main_ui.root] if score @s fish.generic.id = @n[tag=this.hitbox] fish.generic.id run tag @s add this.root

execute if data entity @s interaction run function fish:menu/hitbox/check

execute unless entity @n[tag=this.root] run kill @s
tag @e[tag=this.root] remove this.root
tag @s remove this.hitbox