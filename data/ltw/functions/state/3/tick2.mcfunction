# 固定旁观
gamemode spectator @a[team=!debugging,team=!lobby]
execute as @a[team=!debugging,team=!lobby] run spectate
tp @a[team=!debugging,team=!lobby] -22.5 6.5 -9.0 180.0 0.0

# 清理残留实体
function mini:main/kill_remaining_entity