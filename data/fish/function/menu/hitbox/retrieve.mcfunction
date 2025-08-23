

$execute as @p[tag=this.player] run function fish:item/component/$(location)/get

$data remove storage fish:main player_storage.player1.components.$(component_type)

data remove entity @s item