# 提示旁观者
tellraw @a[team=watching] ["",{"text":">> ","bold":true,"color":"aqua"},"如果你想要回到大厅继续赌博或跑酷, 你可以点击 [",{"text":"这里","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function custom:extra/lobby/spec/switch_mode"}},"] 以切换模式"]
tellraw @a[team=!watching,team=!playing,team=!debugging] ["",{"text":">> ","bold":true,"color":"aqua"},"如果你想要观战当前战局, 请点击 [",{"text":"这里","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function custom:extra/lobby/spec/switch_mode"}},"] 以切换模式"]

# 定期提醒
execute unless score $round mem matches 5 run schedule function custom:extra/lobby/spec/spec_tips 60s replace
execute if score $round mem matches 5.. run schedule clear custom:extra/lobby/spec/spec_tips
execute if score $round mem matches 5.. run tellraw @a[team=!playing,team=!debugging] ["",{"text":">> ","bold":true,"color":"gold"},"检测到当前游戏对局已经是最终局, 不再继续公屏提示模式切换按钮, 请注意!"]