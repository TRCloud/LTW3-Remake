# 生成火球
summon fireball ^ ^ ^1 {CustomName:'["火球"]',CustomNameVisible:1b,Glowing:1b,ExplosionPower:5b,Tags:["fireball"]}
# 倒计时
scoreboard players set @s fireball_countdown 100
# 清除物品
clear @s[nbt={Inventory:[{id:"minecraft:fire_charge",Slot:-106b}]},tag=mini_running] fire_charge 1