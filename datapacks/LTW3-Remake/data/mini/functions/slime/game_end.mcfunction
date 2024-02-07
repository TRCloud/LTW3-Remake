# 结束史莱姆
forceload remove 1000 10064 1064 10064

# 计算得分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s slime_score