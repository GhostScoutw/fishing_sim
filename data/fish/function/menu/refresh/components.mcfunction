#reset stats
scoreboard players set @p[tag=this.player] fish.stat.fishing_power 0
scoreboard players set @p[tag=this.player] fish.stat.lure_power 0
scoreboard players set @p[tag=this.player] fish.stat.bait_power 0
scoreboard players set @p[tag=this.player] fish.stat.sea_blessing 0
scoreboard players set @p[tag=this.player] fish.stat.luck 0

#get stats
execute on passengers as @s[tag=menu.slot] run function fish:menu/refresh/components/addstats with entity @s item.components."minecraft:custom_data".addstats

#get set bonus
execute on passengers as @s[tag=menu.slot] run function fish:menu/refresh/components/setbonus with entity @s item.components."minecraft:custom_data"

execute on passengers as @s[tag=menu.slot] run function fish:menu/refresh/components/settagsremove with entity @s item.components."minecraft:custom_data"

#get behaviour and multipliers
execute on passengers as @s[tag=menu.slot] run function fish:menu/refresh/components/specialbehaviour with entity @s item.components."minecraft:custom_data".specialbehaviour


#apply stats
scoreboard players operation @p[tag=this.player] fish.stat.fishing_power = @p[tag=this.player] fish.stat.fishing_power.add
scoreboard players operation @p[tag=this.player] fish.stat.lure_power = @p[tag=this.player] fish.stat.lure_power.add
scoreboard players operation @p[tag=this.player] fish.stat.bait_power = @p[tag=this.player] fish.stat.bait_power.add
scoreboard players operation @p[tag=this.player] fish.stat.sea_blessing = @p[tag=this.player] fish.stat.sea_blessing.add
scoreboard players operation @p[tag=this.player] fish.stat.luck = @p[tag=this.player] fish.stat.luck.add

#reset counters
scoreboard players reset @p[tag=this.player] fish.stat.fishing_power.add
scoreboard players reset @p[tag=this.player] fish.stat.lure_power.add
scoreboard players reset @p[tag=this.player] fish.stat.bait_power.add
scoreboard players reset @p[tag=this.player] fish.stat.sea_blessing.add
scoreboard players reset @p[tag=this.player] fish.stat.luck.add