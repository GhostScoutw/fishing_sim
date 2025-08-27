
execute if entity @p[distance=..15] run rotate @s facing entity @p

tag @s add this.npc
execute as @e[type=interaction,tag=npc_hitbox] if score @s fish.npc.id = @n[tag=this.npc] fish.npc.id run tag @s add this.npc_hitbox

execute if data entity @n[tag=this.npc_hitbox] interaction run function fish:npc/right_clicked with entity @n[tag=this.npc_hitbox] data
execute if data entity @n[tag=this.npc_hitbox] attack run function fish:npc/left_clicked with entity @n[tag=this.npc_hitbox] data

tag @e[tag=this.npc_hitbox] remove this.npc_hitbox
tag @s remove this.npc