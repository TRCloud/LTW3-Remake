gamerule doDaylightCycle true
scoreboard players set $countdown mem 100

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay belowName health_disp
scoreboard objectives setdisplay sidebar kill_phantom
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 100
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:blue name "剩余时间"