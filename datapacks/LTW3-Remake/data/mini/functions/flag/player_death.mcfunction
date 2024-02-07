# 玩家死亡时由玩家自己触发
tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text": "死亡惩罚: 失明 6 秒","color":"red"}]
tp @s[team=playing] 1018.32 7.87 10018.46 492.67 10.09
effect give @s blindness 6 0
effect give @s resistance 2 5 true
effect give @s night_vision 1000000 0 true