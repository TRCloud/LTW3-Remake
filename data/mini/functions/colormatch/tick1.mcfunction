# 调整物品：仅在纵向速度 < -0.015 且 y > 20 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=1000,y=20,z=4000,dx=100,dy=100,dz=100,scores={temp=-15..}] run data merge entity @s {NoGravity:0b}
execute as @e[tag=bonus_item] unless entity @s[x=1000,y=20,z=4000,dx=100,dy=100,dz=100,scores={temp=-15..}] run data merge entity @s {NoGravity:1b}
# TNT冷却
execute as @a at @s if score @s tnt_countdown matches 1..100 run scoreboard players remove @s tnt_countdown 1
execute as @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] at @s if score @s tnt_countdown matches 0 run title @s actionbar {"text":"TNT冷却已结束!","color": "gold","bold": true}
# TNT投掷
execute as @e[type=tnt,tag=throwable_tnt] if entity @s[nbt={OnGround:1b}] at @s positioned ~ ~ ~ run function item:special/tnt_boom