tag @s add this.fish

execute as @a if score @s fish.generic.id = @n[tag=this.fish] fish.generic.id run tag @s add this.player

tp @s ^ ^ ^1 facing entity @p[tag=this.player] eyes

execute at @s positioned ~ ~-1.8 ~ if entity @p[tag=this.player,distance=..1] as @p[tag=this.player,distance=..1] run function fish:fish/entity/give with entity @n[tag=this.fish] item

execute unless entity @p[tag=this.player] run kill @s
execute as @e[tag=this.player] run tag @s remove this.player


tag @s remove this.fish