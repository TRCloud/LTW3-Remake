# 提示
tellraw @s[team=watching] ["",{"text":">> ","bold":true,"color":"aqua"},"你已成功切换为", {"text":"大厅模式","bold":true,"color":"aqua"}]
tellraw @s[team=!watching,team=!playing,team=!debugging] ["",{"text":">> ","bold":true,"color":"aqua"},"你已成功切换为", {"text":"大厅模式","bold":true,"color":"aqua"}]

# 解除旁观模式
execute as @s[team=watching] run spectate

# 切换模式
gamemode adventure @s[team=watching]
gamemode spectator @s[team=!watching,team=!playing,team=!debugging]

# 切换 tag
tag @s[team=watching] remove mini_running
tag @s[team=!watching,team=!playing,team=!debugging] add mini_running

# 切换队伍
team leave @s[team=watching]
team join watching @s[team=!watching,team=!playing,team=!debugging]

# 传送旁观者回到主大厅
tp @s[team=watching] -11 8 -35