# 向单个玩家展示小游戏介绍
effect give @a night_vision 1000000 0 true
tp @s[team=!debugging] 1018.32 7.87 10018.46 492.67 10.09
tellraw @s ["",{"text":"\n >> 夺命足球 >>\n\n","color":"green","bold":true}," 将史莱姆踢到其他人的脸上, 其他人就是你的球门! 史莱姆也会造成伤害!\n","红石块可以恢复血量!\n",{"text":" 击退史莱姆, 每撞到一个人获得一分.","color":"gray"},{"text":" 快捷栏的最后一格将提供击退棒.","color":"gray"},{"text": " <LTW3R魔改游戏> ","color": "purple"},{"text": " <只能击退玩家> ","color":"yellow"},{"text": " <回忆重修项目> ","color":"aqua"},"\n"]
tellraw @s ""