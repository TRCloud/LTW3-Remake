# 作为玩家加入服务器
team join playing @s

# 清除名次
tag @s remove mini_rank1
tag @s remove mini_rank2
tag @s remove mini_rank3
tag @s add mini_rank4

# 重新加入阶段
tag @s add rejoining
function mini:main/update_player_count
execute if score $state mem matches 0 run function ltw:state/0/player_enter
execute if score $state mem matches 3 run function ltw:state/3/player_enter
execute if score $state mem matches 4 run function ltw:state/4/player_enter
execute if score $state mem matches 5 run function ltw:state/5/player_enter
execute if score $state mem matches 6 run function ltw:state/6/player_enter
execute if score $state mem matches 7 run function ltw:state/7/player_enter
tag @s remove rejoining

# 启用切换旁观计分板
scoreboard players set @s switch_trigger 0
scoreboard players enable @s switch_trigger

# 显示旁观切换提醒
execute unless score $state mem matches 0 run tellraw @s ["",{"text":">> ","bold":true,"color":"aqua"},"如果你想要回到大厅继续赌博或跑酷, 你可以点击 [",{"text":"这里","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger switch_trigger"}},"] 以切换模式"]