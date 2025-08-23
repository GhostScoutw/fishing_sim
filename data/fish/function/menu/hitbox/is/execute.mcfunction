
#has equipped, player holding air
execute if data entity @s item.components unless items entity @p[tag=this.player] weapon.mainhand * store result entity @s item.components.minecraft:custom_data.player_id int 1 run scoreboard \
    players get @p[tag=this.player] fish.generic.id
execute if data entity @s item.components unless items entity @p[tag=this.player] weapon.mainhand * run return run function fish:menu/hitbox/retrieve with entity @s item.components.minecraft:custom_data

#not equipped, player holding air
execute unless data entity @s item.components unless items entity @p[tag=this.player] weapon.mainhand * run return run tellraw @p[tag=this.player] {"text":"You are not holding anything!","color":"red"}

#player holding rod
execute if items entity @p[tag=this.player] weapon.mainhand *[minecraft:custom_data~{rod:1b}] run return run tellraw @p[tag=this.player] {"text":"You must be holding a component to equip it here!","color":"red"}

#holding item but not valid component
$execute unless items entity @p[tag=this.player] weapon.mainhand *[minecraft:custom_data~{component_type:"$(type)"}] \
    run return run tellraw @p[tag=this.player] {"text":"You are not holding a valid component!","color":"red"}


data modify storage component:temp rod set value {}
data modify storage component:temp rod.item_model set from entity @p[tag=this.player] SelectedItem.components.minecraft:item_model
data modify storage component:temp rod.item_name set from entity @p[tag=this.player] SelectedItem.components.minecraft:item_name
data modify storage component:temp rod.lore set from entity @p[tag=this.player] SelectedItem.components.minecraft:lore
data modify storage component:temp rod.max_stack_size set from entity @p[tag=this.player] SelectedItem.components.minecraft:max_stack_size

#custom datas
data modify storage component:temp rod.component_type set from entity @p[tag=this.player] SelectedItem.components.minecraft:custom_data.component_type
data modify storage component:temp rod.compset_id set from entity @p[tag=this.player] SelectedItem.components.minecraft:custom_data.compset_id
data modify storage component:temp rod.location set from entity @p[tag=this.player] SelectedItem.components.minecraft:custom_data.location
data modify storage component:temp rod.component_type set from entity @p[tag=this.player] SelectedItem.components.minecraft:custom_data.component_type
data modify storage component:temp rod.display_model set from entity @p[tag=this.player] SelectedItem.components.minecraft:custom_data.display_model

#add stats
data modify storage component:temp rod.addstats set from entity @p[tag=this.player] SelectedItem.components.minecraft:custom_data.addstats
data modify storage component:temp rod.specialbehaviour set from entity @p[tag=this.player] SelectedItem.components.minecraft:custom_data.specialbehaviour

#player storage id for saving
execute store result storage component:temp rod.player_id int 1 run scoreboard players get @p[tag=this.player] fish.generic.id
function fish:menu/hitbox/set with storage component:temp rod