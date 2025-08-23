
$tag @s add compset.$(compset)

$function fish:item/component/sets/$(compset)/load {compset:"$(compset)"}

scoreboard players add @s fish.stat.set_active 1