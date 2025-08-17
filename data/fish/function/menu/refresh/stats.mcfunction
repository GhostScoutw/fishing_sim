execute unless score @p[tag=this.player] fish.stat.coins matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.coins 0
execute unless score @p[tag=this.player] fish.stat.total_caught matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.total_caught 0
execute unless score @p[tag=this.player] fish.stat.rank matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.rank 0
execute unless score @p[tag=this.player] fish.stat.fishing_power matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.fishing_power 0
execute unless score @p[tag=this.player] fish.stat.lure_power matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.lure_power 0
execute unless score @p[tag=this.player] fish.stat.bait_power matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.bait_power 0
execute unless score @p[tag=this.player] fish.stat.sea_blessing matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.sea_blessing 0
execute unless score @p[tag=this.player] fish.stat.luck matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.luck 0

execute unless score @p[tag=this.player] fish.stat.completion matches -2147483648..2147483647 run scoreboard players set @p[tag=this.player] fish.stat.completion 0

execute on passengers as @s[tag=aj.main_ui.text_display.stats] run data merge entity @s {text:{"text":"Stats","color":"gold","bold": true}}


execute on passengers as @s[tag=aj.main_ui.text_display.coins] run data merge entity @s {text:[{"text":"Coins: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.coins"},"color": "white"}],interpolation_duration:0}
execute on passengers as @s[tag=aj.main_ui.text_display.total_caught] run data merge entity @s {text:[{"text":"Caught: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.total_caught"},"color": "white"}],interpolation_duration:0}
execute on passengers as @s[tag=aj.main_ui.text_display.rank] run data merge entity @s {text:[{"text":"Rank: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.rank"},"color": "white"}],interpolation_duration:0}

execute on passengers as @s[tag=aj.main_ui.text_display.fishing_power] run data merge entity @s {text:[{"text":"Fishing Power: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.fishing_power"},"color": "white"}],interpolation_duration:0}
execute on passengers as @s[tag=aj.main_ui.text_display.lure_power] run data merge entity @s {text:[{"text":"Lure Power: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.lure_power"},"color": "white"}],interpolation_duration:0}
execute on passengers as @s[tag=aj.main_ui.text_display.bait_power] run data merge entity @s {text:[{"text":"Bait Power: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.bait_power"},"color": "white"}],interpolation_duration:0}
execute on passengers as @s[tag=aj.main_ui.text_display.sea_blessing] run data merge entity @s {text:[{"text":"Sea Blessing: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.sea_blessing"},"color": "white"}],interpolation_duration:0}
execute on passengers as @s[tag=aj.main_ui.text_display.luck] run data merge entity @s {text:[{"text":"Luck: ","color":"gold","bold": true},{"score":{"name":"@p[tag=this.player]","objective": "fish.stat.luck"},"color": "white"}],interpolation_duration:0}

execute on passengers as @s[tag=aj.main_ui.text_display.completion] run function fish:menu/refresh/completion
execute on passengers as @s[tag=aj.main_ui.text_display.biome] run function fish:menu/refresh/biome
