scoreboard players add @s gold 81
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了一颗二十面骰, 掷出了 ",{"text": "20, 大成功","color":"green"}, ", 获得了 1 金块!"]
execute at @s run function lib:sounds/levelup