# 5tick运行一次 计分板单位5tick
# 钻石：起飞

scoreboard players remove @a effect_floating 1
scoreboard players remove @e[type=creeper] effect_floating 1
scoreboard players remove @e[type=slime] effect_floating 1

execute as @a[gamemode=!spectator,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s levitation 1 13
execute as @a[gamemode=!spectator,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s speed 1 0 true
execute as @a[gamemode=!spectator,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s slow_falling 1 0 true
execute as @a[gamemode=!spectator,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run function lib:sounds/teleport
execute as @a[gamemode=!spectator,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s effect_floating 5

execute as @e[type=creeper,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s levitation 1 13
execute as @e[type=creeper,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s speed 1 0 true
execute as @e[type=creeper,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s slow_falling 1 0 true
execute as @e[type=creeper,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run function lib:sounds/teleport
execute as @e[type=creeper,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s effect_floating 5

execute as @e[type=slime,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s levitation 1 13
execute as @e[type=slime,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s speed 1 0 true
execute as @e[type=slime,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run effect give @s slow_falling 1 0 true
execute as @e[type=slime,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run function lib:sounds/teleport
execute as @e[type=slime,scores={effect_floating=..-2}] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s effect_floating 5

effect clear @e[scores={effect_floating=0}] levitation
