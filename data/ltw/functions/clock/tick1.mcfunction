# 每 1 Tick 执行一次

# 检查系统重置情况
scoreboard objectives add mem dummy "全局变量"
execute unless score #10 mem matches 10 run function ltw:init

# 检查是否点击切换模式
execute as @a if score @s switch_trigger matches 1 if score $state mem matches 0.. run function custom:extra/lobby/spec/switch_mode
execute as @a if score @s switch_trigger matches 1 if score $state mem matches 0 run tellraw @s ["",{"text":">> ","bold":true,"color":"red"},"你个小天才是准备在没有游戏的时候切换为旁观模式去干坏事嘛（恼）"]

# 调用其他模块
execute if score $state mem matches 5 run function ltw:state/5/tick1