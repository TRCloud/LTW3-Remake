execute as @a[tag=mini_running] store result score @s UUID run data get entity @s UUID[0]
scoreboard players reset @s UUID
execute as @a[tag=mini_running,team=playing] if score @s UUID = $slime_last_hit mem at @s run function mini:slime/game/get_score