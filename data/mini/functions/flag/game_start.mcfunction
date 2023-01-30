scoreboard players set $countdown mem 180

# HUD
execute if score $mini_type mem matches 103 run scoreboard objectives setdisplay list health_disp
execute if score $mini_type mem matches 103 run scoreboard objectives setdisplay belowName total_score
execute if score $mini_type mem matches 103 run scoreboard objectives setdisplay sidebar flag_score
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 180
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"