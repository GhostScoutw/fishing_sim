$execute store result score set_check.$(compset) fish.temp on vehicle on passengers \
    as @s[tag=menu.slot] run tag @s add set_check

$execute store result score set_check.$(compset) fish.temp \
    if items entity @e[tag=menu.slot,tag=set_check] hotbar.0 *[custom_data~{compset:"$(compset)"}]

tag @e[tag=set_check] remove set_check

$execute if score set_check.$(compset) fish.temp matches 3.. as @p[tag=this.player,tag=compset.$(compset)] run return fail
$execute if score set_check.$(compset) fish.temp matches ..2 as @p[tag=this.player,tag=!compset.$(compset)] run return fail

#de-equipped set component, remove set
$execute if score set_check.$(compset) fish.temp matches ..2 as @p[tag=this.player,tag=compset.$(compset)] \
    run return run function fish:item/component/sets/untrigger {compset:"$(compset)"}

#equipped set component, add set
$execute if score set_check.$(compset) fish.temp matches 3.. as @p[tag=this.player,tag=!compset.$(compset)] \
    run return run function fish:item/component/sets/trigger {compset:"$(compset)"}
