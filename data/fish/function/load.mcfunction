



tellraw @a {"text":"Line is cast","color":"aqua","underlined": true}

scoreboard objectives add fish.generic.id dummy
scoreboard objectives add fish.config dummy
scoreboard objectives add fish.item_cooldown dummy

scoreboard objectives add fish.item_use dummy

scoreboard objectives add fish.rod.reel_charge dummy
scoreboard objectives add fish.rod.line.segment dummy
scoreboard objectives add fish.rod.line.target dummy

scoreboard objectives add fish.using_item dummy

scoreboard objectives add fish.physics.x dummy
scoreboard objectives add fish.physics.y dummy
scoreboard objectives add fish.physics.z dummy

scoreboard objectives add fish.physics.x2 dummy
scoreboard objectives add fish.physics.y2 dummy
scoreboard objectives add fish.physics.z2 dummy

scoreboard objectives add fish.physics.rotx dummy
scoreboard objectives add fish.physics.rotz dummy

scoreboard objectives add fish.bobber.bobbing dummy
scoreboard objectives add fish.bobber.caught dummy
scoreboard objectives add fish.bobber.caught_progress dummy

scoreboard objectives add fish.pool.roll dummy


execute unless score legiti_exclusive fish.config matches -2147483648..2147483647 run scoreboard players set legiti_exclusive fish.config 0
