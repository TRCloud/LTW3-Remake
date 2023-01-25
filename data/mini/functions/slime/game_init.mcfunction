# 初始化史莱姆地图
forceload add 1000 10000 1064 10064

scoreboard players set $finish_mode mem 0
scoreboard players reset * slime_score

# 生成地图
setblock 1000 4 10000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:slime",sizeY:7,sizeZ:32,showboundingbox:0b}
setblock 1000 5 10000 redstone_block
setblock 1000 4 10000 air

# 重置分数
scoreboard players reset $slime_last_hit mem
scoreboard players set $countdown_fast mem 0

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing collisionRule always
gamerule fallDamage false
