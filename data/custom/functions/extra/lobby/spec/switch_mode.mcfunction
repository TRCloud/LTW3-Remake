# 提示
tellraw @s[team=watching] ["",{"text":">> ","bold":true,"color":"aqua"},"你已成功切换为", {"text":"大厅模式","bold":true,"color":"aqua"}]
tellraw @s[team=lobby] ["",{"text":">> ","bold":true,"color":"aqua"},"你已成功切换为", {"text":"大厅模式","bold":true,"color":"aqua"}]

# 解除旁观模式
execute as @s[team=watching] run spectate

# 切换模式
gamemode adventure @s[team=watching]
gamemode spectator @s[team=lobby]

# 切换 tag
tag @s[team=watching] remove mini_running
tag @s[team=watching] remove select_player
tag @s[team=lobby] add mini_running
tag @s[team=lobby] add select_player

# 切换队伍
execute if entity @s[team=watching] run team join watching
execute if entity @s[team=lobby] run team join lobby

# 传送旁观者回到主大厅
tp @s[team=watching] -10 8 -32 -113 0

# 重置计分板
scoreboard players set @s switch_trigger 0
execute unless score $state mem matches 0 run scoreboard players enable @s switch_trigger