# 5tick运行一次 计分板单位5tick
# 绿宝石：跳跃

scoreboard players remove @a effect_jump_boost 1
scoreboard players remove @e[type=creeper] effect_jump_boost 1
scoreboard players remove @e[type=slime] effect_jump_boost 1

execute as @a[gamemode=!spectator,scores={effect_jump_boost=..-2}] at @s if block ~ ~-1 ~ emerald_block run effect give @s jump_boost 1 5 true
execute as @a[gamemode=!spectator,scores={effect_jump_boost=..-2}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players set @s effect_jump_boost 5

execute as @e[type=creeper,scores={effect_jump_boost=..-2}] at @s if block ~ ~-1 ~ emerald_block run effect give @s jump_boost 1 5 true
execute as @e[type=creeper,scores={effect_jump_boost=..-2}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players set @s effect_jump_boost 5

execute as @e[type=slime,scores={effect_jump_boost=..-2}] at @s if block ~ ~-1 ~ emerald_block run effect give @s jump_boost 1 5 true
execute as @e[type=slime,scores={effect_jump_boost=..-2}] at @s if block ~ ~-1 ~ emerald_block run scoreboard players set @s effect_jump_boost 5

effect clear @e[scores={effect_jump_boost=0}] jump_boost
