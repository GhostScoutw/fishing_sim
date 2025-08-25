scoreboard players add vote fish.worldtimers 1
scoreboard players add music.rec fish.worldtimers 1




execute if score vote fish.worldtimers matches 10000 run function fish:worldtimers/vote
execute if score music.rec fish.worldtimers matches 20000 run function fish:worldtimers/musicrec