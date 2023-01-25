# 如小游戏有多条命,需在小游戏中设置给玩家mini_heart生命上限并调用此函数
# 设置生命值上限
execute if score @s mini_heart matches 11.. run tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text":"小游戏生命上限为 10!","color":"red"}]
execute if score @s mini_heart matches 11.. run scoreboard players set @s mini_heart 10

# 根据玩家mini_heart数量决定生命值上限
execute if score @s mini_heart matches 10 run attribute @s generic.max_health base set 20
execute if score @s mini_heart matches 9 run attribute @s generic.max_health base set 18
execute if score @s mini_heart matches 8 run attribute @s generic.max_health base set 16
execute if score @s mini_heart matches 7 run attribute @s generic.max_health base set 14
execute if score @s mini_heart matches 6 run attribute @s generic.max_health base set 12
execute if score @s mini_heart matches 5 run attribute @s generic.max_health base set 10
execute if score @s mini_heart matches 4 run attribute @s generic.max_health base set 8
execute if score @s mini_heart matches 3 run attribute @s generic.max_health base set 6
execute if score @s mini_heart matches 2 run attribute @s generic.max_health base set 4
execute if score @s mini_heart matches 1 run attribute @s generic.max_health base set 2

# 如果玩家血量比最大血量高，则给个瞬间治疗
scoreboard players operation @s temp = @s mini_heart
scoreboard players operation @s temp += @s mini_heart
scoreboard players operation @s temp2 = @s health_disp
scoreboard players operation @s[scores={health=1..}] temp2 = @s health
scoreboard players set @s[scores={temp2=0}] temp2 20
execute if score @s temp2 > @s temp run effect give @s instant_health 1 0 true
