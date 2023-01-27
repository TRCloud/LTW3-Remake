summon armor_stand ^ ^ ^1 {Tags:["tnt_leader"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Rotation:[0f,0f]}

# 计算视角向量
execute store result score $temp_x debug_test run data get entity @e[tag=tnt_leader,limit=1] Pos[0] 1000
execute store result score $temp_y debug_test run data get entity @e[tag=tnt_leader,limit=1] Pos[1] 1000
execute store result score $temp_z debug_test run data get entity @e[tag=tnt_leader,limit=1] Pos[2] 1000
execute store result score $temp_px debug_test run data get entity @s Pos[0] 1000
execute store result score $temp_py debug_test run data get entity @s Pos[1] 1000
execute store result score $temp_pz debug_test run data get entity @s Pos[2] 1000
scoreboard players operation $temp_x debug_test -= $temp_px debug_test
scoreboard players operation $temp_y debug_test -= $temp_py debug_test
scoreboard players operation $temp_z debug_test -= $temp_pz debug_test

# 接受参数 与y 的基础值
scoreboard players operation $temp_x debug_test *= $multiplier_x debug_test
scoreboard players operation $temp_y debug_test *= $multiplier_y debug_test
scoreboard players operation $temp_z debug_test *= $multiplier_z debug_test

scoreboard players operation $temp_y debug_test += $base_y debug_test

# 生成tnt
summon tnt ~ ~1 ~ {Tags:["throwable_tnt","tnt_init"],Fuse:80}
# 修改tnt的向量
execute store result entity @e[tag=tnt_init,limit=1] Motion[0] double 0.00001 run scoreboard players get $temp_x debug_test
execute store result entity @e[tag=tnt_init,limit=1] Motion[1] double 0.00001 run scoreboard players get $temp_y debug_test
execute store result entity @e[tag=tnt_init,limit=1] Motion[2] double 0.00001 run scoreboard players get $temp_z debug_test
kill @e[tag=tnt_leader]
tag @e[tag=tnt_init] remove tnt_init
