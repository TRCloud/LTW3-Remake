# 刷新单个玩家背包中的绿宝石

scoreboard players add @s green 0
scoreboard players add @s green_total 0
clear @s emerald_block
clear @s emerald

# 获取绿宝石块数，存于 temp
scoreboard players operation @s temp = @s green
scoreboard players operation @s temp /= #9 mem
# 给予绿宝石块
execute if score @s temp matches 1.. at @s run function item:shop/summon_emerald_block
# 获取绿宝石数，存于 temp
scoreboard players operation @s temp = @s green
scoreboard players operation @s temp %= #9 mem
# 给予绿宝石
execute if score @s temp matches 1.. at @s run function item:shop/summon_emerald
