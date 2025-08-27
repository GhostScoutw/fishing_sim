
execute as @n[tag=this.npc_hitbox] on attacker run tag @s add this.player

$$(left_click)

execute as @n[tag=this.npc_hitbox] on attacker run tag @s remove this.player
data remove entity @n[tag=this.npc_hitbox] attack