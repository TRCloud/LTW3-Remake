execute if score $countdown_fast mem matches 0 run scoreboard players reset $slime_last_hit mem

# 给予击退棒
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:8b,id:"minecraft:lightning_rod",tag:{game_item:1b}}] run function mini:slime/game/give_stick

# 当史莱姆被击打后锁死
execute store result score $slime_hurt mem run data get entity @e[tag=football,limit=1,type=slime] HurtTime
execute if score $slime_hurt mem matches 0 run attribute @e[tag=football,type=slime,limit=1] generic.knockback_resistance base set 0
execute if score $slime_hurt mem matches 0 run team leave @e[tag=football,type=slime]
execute unless score $slime_hurt mem matches 0 run attribute @e[tag=football,type=slime,limit=1] generic.knockback_resistance base set 100
execute unless score $slime_hurt mem matches 0 run team join slime_lock @e[tag=football,type=slime]