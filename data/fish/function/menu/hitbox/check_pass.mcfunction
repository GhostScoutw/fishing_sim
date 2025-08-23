
execute if entity @s[tag=menu.exit] run return run function fish:menu/hitbox/is/exit
execute if entity @s[tag=menu.quests] run return run function fish:menu/hitbox/is/quests

execute if entity @s[tag=menu.hitbox.handle] as @n[tag=this.menu] on passengers as @s[tag=menu.slot.handle] run return run function fish:menu/hitbox/is/execute {type:"handle"}
execute if entity @s[tag=menu.hitbox.body] as @n[tag=this.menu] on passengers as @s[tag=menu.slot.body] run return run function fish:menu/hitbox/is/execute {type:"body"}
execute if entity @s[tag=menu.hitbox.reel] as @n[tag=this.menu] on passengers as @s[tag=menu.slot.reel] run return run function fish:menu/hitbox/is/execute {type:"reel"}
execute if entity @s[tag=menu.hitbox.string] as @n[tag=this.menu] on passengers as @s[tag=menu.slot.string] run return run function fish:menu/hitbox/is/execute {type:"string"}
execute if entity @s[tag=menu.hitbox.bobber] as @n[tag=this.menu] on passengers as @s[tag=menu.slot.bobber] run return run function fish:menu/hitbox/is/execute {type:"bobber"}
execute if entity @s[tag=menu.hitbox.hook] as @n[tag=this.menu] on passengers as @s[tag=menu.slot.hook] run return run function fish:menu/hitbox/is/execute {type:"hook"}