summon armor_stand ^ ^ ^1 {Tags:["fireball_boot"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Rotation:[0f,0f]}

# 计算视角向量
execute store result score $temp_x debug_test run data get entity @e[tag=fireball_boot,limit=1] Pos[0] 1000
execute store result score $temp_y debug_test run data get entity @e[tag=fireball_boot,limit=1] Pos[1] 1000
execute store result score $temp_z debug_test run data get entity @e[tag=fireball_boot,limit=1] Pos[2] 1000
execute store result score $temp_px debug_test run data get entity @s Pos[0] 1000
execute store result score $temp_py debug_test run data get entity @s Pos[1] 1000
execute store result score $temp_pz debug_test run data get entity @s Pos[2] 1000
scoreboard players operation $temp_x debug_test -= $temp_px debug_test
scoreboard players operation $temp_y debug_test -= $temp_py debug_test
scoreboard players operation $temp_z debug_test -= $temp_pz debug_test

# 方向计算
scoreboard players operation $temp_x debug_test *= $2 mem
scoreboard players operation $temp_y debug_test *= $2 mem
scoreboard players operation $temp_z debug_test *= $2 mem

# 生成tnt
summon fireball ~ ~1 ~ {Tags:["fireball_fly","fireball_init"],CustomName:'["火球"]',CustomNameVisible:1b,Glowing:1b,ExplosionPower:5b}
# 修改tnt的向量
execute store result entity @e[tag=fireball_init,limit=1] power[0] double 0.00001 run scoreboard players get $temp_x debug_test
execute store result entity @e[tag=fireball_init,limit=1] power[1] double 0.00001 run scoreboard players get $temp_y debug_test
execute store result entity @e[tag=fireball_init,limit=1] power[2] double 0.00001 run scoreboard players get $temp_z debug_test
kill @e[tag=fireball_boot]
tag @e[tag=fireball_init] remove fireball_init