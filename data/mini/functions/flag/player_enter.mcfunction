# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration true

# 传送玩家
tp @s[team=playing,tag=!rejoining] 1018.32 7.87 10018.46 492.67 10.09

# 重置记分板
scoreboard players reset @s flag_score
scoreboard players set @s[team=playing] flag_score 0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:flag/player_death