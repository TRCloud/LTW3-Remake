summon armor_stand ^ ^ ^1 {Tags:["tnt_leader"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Rotation:[0f,0f]}

# 计算视角向量
execute store result score $tnt_x mem run data get entity @e[tag=tnt_leader,limit=1] Pos[0] 1000
execute store result score $tnt_y mem run data get entity @e[tag=tnt_leader,limit=1] Pos[1] 1000
execute store result score $tnt_z mem run data get entity @e[tag=tnt_leader,limit=1] Pos[2] 1000
execute store result score $tnt_px mem run data get entity @s Pos[0] 1000
execute store result score $tnt_py mem run data get entity @s Pos[1] 1000
execute store result score $tnt_pz mem run data get entity @s Pos[2] 1000
scoreboard players operation $tnt_x mem -= $tnt_px mem
scoreboard players operation $tnt_y mem -= $tnt_py mem
scoreboard players operation $tnt_z mem -= $tnt_pz mem

# 接受参数 与 y轴坐标 的基础值
scoreboard players operation $tnt_x mem *= $multiplier_x mem
scoreboard players operation $tnt_y mem *= $multiplier_y mem
scoreboard players operation $tnt_z mem *= $multiplier_z mem

scoreboard players operation $tnt_y mem += $base_y mem

# 生成tnt
summon tnt ~ ~1 ~ {Tags:["throwable_tnt","tnt_init"],Fuse:80}

# 修改tnt的向量
execute store result entity @e[tag=tnt_init,limit=1] Motion[0] double 0.00001 run scoreboard players get $tnt_x mem
execute store result entity @e[tag=tnt_init,limit=1] Motion[1] double 0.00001 run scoreboard players get $tnt_y mem
execute store result entity @e[tag=tnt_init,limit=1] Motion[2] double 0.00001 run scoreboard players get $tnt_z mem
tag @e[tag=tnt_init] remove tnt_init


# Made by Very Yummy Cookie