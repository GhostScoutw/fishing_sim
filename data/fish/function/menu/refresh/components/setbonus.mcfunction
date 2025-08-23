execute store result score set_check.pipe fish.temp on vehicle on passengers \
    as @s[tag=menu.slot] run tag @s add set_check

execute store result score set_check.pipe fish.temp \
    if items entity @e[tag=menu.slot,tag=set_check] hotbar.0 *[custom_data~{compset:"pipe"}]

tag @e[tag=set_check] remove set_check

execute if score set_check.pipe fish.temp matches 3.. as @p[tag=this.player,tag=compset.pipe] run return fail
execute if score set_check.pipe fish.temp matches ..2 as @p[tag=this.player,tag=!compset.pipe] run return fail

#de-equipped set component, remove set
$execute if score set_check.pipe fish.temp matches ..2 as @p[tag=this.player,tag=compset.pipe] \
    run return run function fish:item/component/sets/untrigger {compset:"$(compset)"}

#equipped set component, add set
$execute if score set_check.pipe fish.temp matches 3.. as @p[tag=this.player,tag=!compset.pipe] \
    run return run function fish:item/component/sets/trigger {compset:"$(compset)"}
