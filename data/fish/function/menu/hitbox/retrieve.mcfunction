

$execute as @p[tag=this.player] run function fish:item/component/$(location)/get

$data remove storage fish:main player_storage.player$(player_id).components.$(component_type)


execute at @s run playsound entity.item_frame.remove_item master @p[tag=this.player] ~ ~ ~ 1 2
data remove entity @s item

execute as @n[tag=this.menu] run function fish:menu/refresh/components
