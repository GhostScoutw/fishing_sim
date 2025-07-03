
execute on passengers as @s[tag=this.rod] on vehicle run tag @s add already_mounted
execute unless entity @s[tag=already_mounted] run ride @n[tag=this.rod] mount @s
tag @s remove already_mounted

execute at @s on passengers as @s[tag=this.rod] run rotate @s ~ 0
execute at @s on passengers as @s[tag=this.rod] on passengers run rotate @s ~ 0



execute on passengers as @s[tag=this.ui] on vehicle run tag @s add already_mounted
execute unless entity @s[tag=this.ui] run ride @n[tag=this.ui] mount @s
tag @s remove already_mounted
