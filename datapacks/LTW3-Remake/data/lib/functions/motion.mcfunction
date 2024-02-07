#> lib:motion
# @input score $motion_x mem 向量X
# @input score $motion_y mem 向量Y
# @input score $motion_z mem 向量Z
# @input score $multiplier mem 精度乘数，已经计算时应对应修改 默认: 10000
# @input score $overwrite mem 是否覆写原有的动量速 0=false 1=true 默认: false
# @input tag __motion_target__ 目标生物

execute run scoreboard players operation $motion_x mem *= $multiplier mem
execute run scoreboard players operation $motion_y mem *= $multiplier mem
execute run scoreboard players operation $motion_z mem *= $multiplier mem

execute if score $overwrite mem = #0 mem store result score $original_x mem run data get entity @e[tag=__motion_target__,limit=1] Motion[0] 10000
execute if score $overwrite mem = #0 mem store result score $original_y mem run data get entity @e[tag=__motion_target__,limit=1] Motion[1] 10000
execute if score $overwrite mem = #0 mem store result score $original_z mem run data get entity @e[tag=__motion_target__,limit=1] Motion[2] 10000
execute if score $overwrite mem = #0 mem run scoreboard players operation $motion_x mem += $original_x mem
execute if score $overwrite mem = #0 mem run scoreboard players operation $motion_y mem += $original_y mem
execute if score $overwrite mem = #0 mem run scoreboard players operation $motion_z mem += $original_z mem

execute store result entity @e[tag=__motion_target__,limit=1] Motion[0] double 0.0001 run scoreboard players get $motion_x mem
execute store result entity @e[tag=__motion_target__,limit=1] Motion[1] double 0.0001 run scoreboard players get $motion_y mem
execute store result entity @e[tag=__motion_target__,limit=1] Motion[2] double 0.0001 run scoreboard players get $motion_z mem

tag @e[tag=__motion_target__,limit=1] remove __motion_target__

# 恢复默认值
scoreboard players set $multiplier mem 10000
scoreboard players set $overwrite mem 0