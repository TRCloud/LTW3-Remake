# 提示旁观者
tellraw @a[team=watching] ["",{"text":">> ","bold":true,"color":"aqua"},"如果你想要回到大厅继续赌博或跑酷, 你可以点击 [",{"text":"这里","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger switch_trigger"}},"] 以切换模式"]
tellraw @a[team=lobby] ["",{"text":">> ","bold":true,"color":"aqua"},"如果你想要观战当前战局, 请点击 [",{"text":"这里","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger switch_trigger"}},"] 以切换模式"]

# 定期提醒
execute unless score $state mem matches 0 run schedule function custom:extra/lobby/spec/spec_tips 60s replace
execute if score $state mem matches 0 run schedule clear custom:extra/lobby/spec/spec_tips