# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=minecraft:item_display,tag=aj.main_ui.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'main_ui', 'function_path': 'animated_java:main_ui/remove/this'}
execute on passengers if entity @s[tag=aj.global.data] run function animated_java:main_ui/remove/zzz/this/as_data
execute on passengers run kill @s
kill @s