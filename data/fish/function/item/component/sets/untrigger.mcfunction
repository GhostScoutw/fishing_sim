
$tag @s remove compset.$(compset)

$function fish:item/component/sets/$(compset)/deload

scoreboard players remove @s fish.stat.set_active 1