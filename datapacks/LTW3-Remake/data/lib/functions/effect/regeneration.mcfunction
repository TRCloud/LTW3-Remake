# 5tick运行一次 计分板单位5tick
# 红石块：回血

scoreboard players remove @a effect_regeneration 1
scoreboard players remove @e[type=creeper] effect_regeneration 1
scoreboard players remove @e[type=slime] effect_regeneration 1

execute as @a[gamemode=!spectator,scores={effect_regeneration=..-2}] at @s if block ~ ~-1 ~ redstone_block run effect give @s regeneration 1 1 true
execute as @a[gamemode=!spectator,scores={effect_regeneration=..-2}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players set @s effect_regeneration 5

execute as @e[type=creeper,scores={effect_regeneration=..-2}] at @s if block ~ ~-1 ~ redstone_block run effect give @s regeneration 1 1 true
execute as @e[type=creeper,scores={effect_regeneration=..-2}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players set @s effect_regeneration 5

execute as @e[type=slime,scores={effect_regeneration=..-2}] at @s if block ~ ~-1 ~ redstone_block run effect give @s regeneration 1 1 true
execute as @e[type=slime,scores={effect_regeneration=..-2}] at @s if block ~ ~-1 ~ redstone_block run scoreboard players set @s effect_regeneration 5

effect clear @e[scores={effect_regeneration=0}] regeneration
