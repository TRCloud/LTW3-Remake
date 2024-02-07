# 5tick运行一次 计分板单位5tick
# 金块：加速

scoreboard players remove @a effect_slowing 1
scoreboard players remove @e[type=creeper] effect_slowing 1
scoreboard players remove @e[type=slime] effect_slowing 1

execute as @a[gamemode=!spectator,scores={effect_slowing=..-2}] at @s if block ~ ~-1 ~ soul_soil run effect give @s slowness 2 2 true
execute as @a[gamemode=!spectator,scores={effect_slowing=..-2}] at @s if block ~ ~-1 ~ soul_soil run scoreboard players set @s effect_slowing 15

execute as @e[type=creeper,scores={effect_slowing=..-2}] at @s if block ~ ~-1 ~ soul_soil run effect give @s slowness 2 2 true
execute as @e[type=creeper,scores={effect_slowing=..-2}] at @s if block ~ ~-1 ~ soul_soil run scoreboard players set @s effect_slowing 15

execute as @e[type=slime,scores={effect_slowing=..-2}] at @s if block ~ ~-1 ~ soul_soil run effect give @s slowness 2 2 true
execute as @e[type=slime,scores={effect_slowing=..-2}] at @s if block ~ ~-1 ~ soul_soil run scoreboard players set @s effect_slowing 15

effect clear @e[scores={effect_slowing=0}] speed