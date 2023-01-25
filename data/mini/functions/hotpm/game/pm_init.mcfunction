# 刷新对应人数的土豆
function mini:hotpm/game/pm_give
tag @a[tag=pm_explode_last] remove pm_explode_last

# 告知玩家
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=pm_holding]","color":"gold"}," 获得了炸弹!"]

# 土豆爆炸时间 = 存活人数 * 2.5 + 1（秒）
scoreboard players set $countdown_fast mem 10
execute as @a[tag=mini_running] run scoreboard players add $countdown_fast mem 25
scoreboard players operation $countdown_max mem = $countdown_fast mem