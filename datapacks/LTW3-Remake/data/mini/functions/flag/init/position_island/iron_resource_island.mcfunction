scoreboard players operation $iron_resource_island mem -= #1 mem
function mini:flag/init/position_island/_prepare_pos
tag @e[tag=island,tag=generating,limit=1] add iron_resource_island

scoreboard players set $random_min mem -10000
scoreboard players set $random_max mem 10000
scoreboard players set #50000 mem 50000
function lib:random
scoreboard players operation $motion_x mem = $random mem
execute if score $random mem >= #0 mem run scoreboard players operation $motion_x mem += #50000 mem
execute if score $random mem < #0 mem run scoreboard players operation $motion_x mem -= #50000 mem
function lib:random
scoreboard players operation $motion_z mem = $random mem
execute if score $random mem >= #0 mem run scoreboard players operation $motion_z mem += #50000 mem
execute if score $random mem < #0 mem run scoreboard players operation $motion_z mem -= #50000 mem
scoreboard players set $motion_y mem 8000

scoreboard players set $multiplier mem 1
function lib:motion

schedule function mini:flag/init/position_island/_delay_pos 0.5s replace