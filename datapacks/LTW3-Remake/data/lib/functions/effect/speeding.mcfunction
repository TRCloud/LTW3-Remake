# 5tick运行一次 计分板单位5tick
# 金块：加速

scoreboard players remove @a effect_speeding 1
scoreboard players remove @e[type=creeper] effect_speed 1
scoreboard players remove @e[type=slime] effect_speed 1

execute as @a[gamemode=!spectator,scores={effect_speed=..-2}] at @s if block ~ ~-1 ~ gold_block run effect give @s speed 3 2 true
execute as @a[gamemode=!spectator,scores={effect_speed=..-2}] at @s if block ~ ~-1 ~ gold_block run scoreboard players set @s effect_speed 15

execute as @e[type=creeper,scores={effect_speed=..-2}] at @s if block ~ ~-1 ~ gold_block run effect give @s speed 3 2 true
execute as @e[type=creeper,scores={effect_speed=..-2}] at @s if block ~ ~-1 ~ gold_block run scoreboard players set @s effect_speed 15

execute as @e[type=slime,scores={effect_speed=..-2}] at @s if block ~ ~-1 ~ gold_block run effect give @s speed 3 2 true
execute as @e[type=slime,scores={effect_speed=..-2}] at @s if block ~ ~-1 ~ gold_block run scoreboard players set @s effect_speed 15

effect clear @e[scores={effect_speed=0}] speed