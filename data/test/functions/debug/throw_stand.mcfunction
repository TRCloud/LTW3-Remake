summon minecraft:armor_stand ~ ~ ~ {Tags:["debug_throw_stand","__motion_target__"],Invisible:1b}

scoreboard players set $random_min mem -40000
scoreboard players set $random_max mem 40000
function lib:random
scoreboard players operation $motion_x mem = $random mem
function lib:random
scoreboard players operation $motion_z mem = $random mem
scoreboard players set $random_min mem -10000
scoreboard players set $random_max mem 30000
function lib:random
scoreboard players operation $motion_y mem = $random mem

scoreboard players set $multiplier mem 1
function lib:motion