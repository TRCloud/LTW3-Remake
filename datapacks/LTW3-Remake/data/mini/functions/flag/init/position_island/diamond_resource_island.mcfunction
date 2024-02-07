scoreboard players operation $diamond_resource_island mem -= #1 mem
function mini:flag/init/position_island/_prepare_pos
tag @e[tag=island,tag=generating,limit=1] add diamond_resource_island

# X范围偏小，保证纺锤
scoreboard players set $random_min mem -30000
scoreboard players set $random_max mem 30000
function lib:random
scoreboard players operation $motion_x mem = $random mem

# Z范围偏大，保证纺锤
scoreboard players set $motion_z mem 0
scoreboard players set #80000 mem 80000
scoreboard players set $random_min mem -10000
scoreboard players set $random_max mem 10000
function lib:random
execute run scoreboard players operation $motion_z mem += $random mem
execute if score $random mem >= #0 mem run scoreboard players operation $motion_z mem += #80000 mem
execute if score $random mem < #0 mem run scoreboard players operation $motion_z mem -= #80000 mem

scoreboard players set $motion_y mem 15000

scoreboard players set $multiplier mem 1
function lib:motion

schedule function mini:flag/init/position_island/_delay_pos 0.5s replace


