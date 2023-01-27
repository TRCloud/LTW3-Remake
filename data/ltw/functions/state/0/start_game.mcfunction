# 开始游戏

# 确认实际玩家
tag @a remove selected_player
tag @a[team=playing,sort=random,limit=8] add selected_player

# 通知队伍
tellraw @a[team=playing,tag=!selected_player] ["",{"text": ">> ","color": "red","bold": true},{"text": "你没有被选中参与, 将旁观本局游戏!","color": "red"}]
team join watching @a[team=playing,tag=!selected_player]
tellraw @a[team=playing,tag=selected_player] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始!","color": "green"}]
tellraw @a[team=watching] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始, 你将旁观本局游戏!","color": "green"}]
tellraw @a[team=debugging] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "你正处于 Debug 模式中, 将忽略游戏开始!","color": "aqua"}]

# 设置数据
scoreboard players reset * total_score
scoreboard players set @a[team=playing] total_score 0
scoreboard players reset * total_score_disp
scoreboard players set @a[team=playing] total_score_disp 0
scoreboard players set @a gold_extra 0
scoreboard players set @a green_extra 0
scoreboard players set $round mem 1
scoreboard players add $ game_id 1
scoreboard players operation @a game_id = $ game_id

# 设置玩家id
scoreboard players set @a[team=playing] player_id 0
scoreboard players set $player_id mem 0
execute if entity @a[team=playing,scores={player_id=0}] run function ltw:state/0/set_player_id

# 重置物品
clear @a[team=playing]
execute as @a[team=playing] at @s run function item:shop/refresh_equip

# 开始小游戏
function lib:sounds/music/stop
function ltw:state/3/state_enter
