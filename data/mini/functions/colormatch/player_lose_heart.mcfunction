# 告知玩家
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 掉入了陷阱!"]

# 失去一颗心
tag @s add colormatch_hurt
function mini:main/player_lose_heart
function lib:sounds/error

# 拉上屏障
execute if entity @s[tag=mini_running] run tp @s 1060 29 4010
tag @s add color_match_fall
