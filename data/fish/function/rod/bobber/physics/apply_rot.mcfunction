

$execute at @s rotated $(rotx) $(rotz) if block ^ ^ ^$(reel_charge) air run tp @s ^ ^ ^$(reel_charge)

#$execute as @p at @s rotated $(rotx) $(rotz) if block ^ ^ ^$(reel_charge) air run tp @s ^ ^ ^$(reel_charge)

#$say $(reel_charge)

execute at @s if block ~ ~-0.25 ~ air run tp @s ~ ~-0.25 ~
execute at @s unless block ~ ~-0.25 ~ air run scoreboard players remove @s[scores={fish.rod.reel_charge=3..}] fish.rod.reel_charge 2

scoreboard players remove @s[scores={fish.rod.reel_charge=1..}] fish.rod.reel_charge 1