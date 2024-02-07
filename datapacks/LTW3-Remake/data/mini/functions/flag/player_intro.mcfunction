# 向单个玩家展示小游戏介绍
effect give @s night_vision 1000000 0 true
tp @s[team=!debugging] 997 65 11006
tellraw @s ["",{"text":"\n >> 浮岛战争 >>\n\n","color":"green","bold":true}," 去不同的岛屿收集旗帜! 不同颜色的旗帜带回主岛后会有不同的效果!\n","或者你也可以去抢夺他人的旗帜!\n",{"text":" 每一个旗帜代表一分!","color":"gray"},{"text": " <LTW3R魔改游戏> ","color": "purple"},{"text": " <可以杀死玩家> ","color":"red"},"\n"]
tellraw @s ""