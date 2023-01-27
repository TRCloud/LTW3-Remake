# 提示
execute if entity @s[team=watching] run tellraw @s ["",{"text":">> ","bold":true,"color":"aqua"},"你已成功切换为", {"text":"大厅模式","bold":true,"color":"aqua"}]
execute if entity @s[team=lobby] run tellraw @s ["",{"text":">> ","bold":true,"color":"aqua"},"你已成功切换为", {"text":"大厅模式","bold":true,"color":"aqua"}]

# 解除旁观模式
execute if entity @s[team=watching] as @s run spectate

# 切换模式
execute if entity @s[team=watching] run gamemode adventure @s
execute if entity @s[team=lobby] run gamemode spectator @s

# 切换 tag
execute if entity @s[team=watching] run tag @s remove mini_running
execute if entity @s[team=watching] run tag @s remove select_player
execute if entity @s[team=lobby] run tag @s add mini_running
execute if entity @s[team=lobby] run tag @s add select_player

# 切换队伍
execute if entity @s[team=watching] run team join watching
execute if entity @s[team=lobby] run team join lobby @s

# 传送旁观者回到主大厅
execute if entity @s[team=watching] run tp @s -10 8 -32 -113 0

# 重置计分板
scoreboard players set @s switch_trigger 0
execute unless score $state mem matches 0 run scoreboard players enable @s switch_trigger