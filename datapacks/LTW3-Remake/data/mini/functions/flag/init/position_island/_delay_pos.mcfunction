data modify entity @e[tag=generating,tag=island,limit=1] NoGravity set value 1b
tag @e[tag=generating,tag=island,limit=1] remove generating
execute as @e[tag=main_island,limit=1] at @s run function mini:flag/init/position