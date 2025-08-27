
execute as @n[tag=this.npc_hitbox] on target run tag @s add this.player

$$(right_click)

execute as @n[tag=this.npc_hitbox] on target run tag @s remove this.player
data remove entity @n[tag=this.npc_hitbox] interaction