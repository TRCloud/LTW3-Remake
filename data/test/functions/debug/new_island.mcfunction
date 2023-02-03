summon minecraft:armor_stand ~ ~ ~ {Tags:["island_boot"]}

# 随机抛出
scoreboard players set $random_min mem -160000
scoreboard players set $random_max mem 160000
function lib:random
scoreboard players operation $motion_x mem = $random mem
function lib:random
scoreboard players operation $motion_z mem = $random mem
scoreboard players set $random_min mem -10000
scoreboard players set $random_max mem 30000
function lib:random
scoreboard players operation $motion_y mem = $random mem
scoreboard players set $multiplier mem 1
tag @e[type=minecraft:armor_stand,tag=island_boot] add __motion_target__
function lib:motion

schedule function test:debug/new_island_delay 0.5s replace