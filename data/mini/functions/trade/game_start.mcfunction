
# HUD 与倒计时
scoreboard objectives setdisplay list total_score_disp
scoreboard objectives setdisplay belowName total_score_disp
scoreboard objectives setdisplay sidebar emerald
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 320
scoreboard players set $countdown mem 320
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:red name "剩余时间"
bossbar set mini:yellow name "剩余时间"
bossbar set mini:blue name "剩余时间"

# 世界边界
worldborder center 1016.0 5016.0
worldborder set 29.999