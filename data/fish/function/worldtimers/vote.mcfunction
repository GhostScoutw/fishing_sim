execute store result score votemessage fish.temp run random value 1..6
scoreboard players reset vote fish.worldtimers

execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.5 0.5

execute if score votemessage fish.temp matches 1 run tellraw @a {"text":"Reminder to /vote if you are enjoying the game!","color":"green"}

execute if score votemessage fish.temp matches 2 run tellraw @a {"text":"Reminder to /vote if you like fish!","color":"green"}

execute if score votemessage fish.temp matches 3 run tellraw @a {"text":"Voting is a great way to show support for the developers!","color":"green"}

execute if score votemessage fish.temp matches 4 run tellraw @a {"text":"/Vote if you think that RageBird should be called RageMold!","color":"green"}

execute if score votemessage fish.temp matches 5 run tellraw @a {"text":"/Vote! Also, reminder to drink water","color":"green"}

execute if score votemessage fish.temp matches 6 run tellraw @a {"text":"9/10 Dentists recommend you to /vote!","color":"green"}
