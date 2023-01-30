# 初始化史莱姆地图
forceload add 229 -198 183 -118

scoreboard players set $finish_mode mem 0
scoreboard players reset * flag_score

# 生成地图
setblock 997 55 11006 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"xiaoMCkedou",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:flag1",sizeY:7,sizeZ:32,showboundingbox:0b}
setblock 997 56 11006 redstone_block
setblock 997 55 11006 air

# 伤害管理
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule fireDamage true
gamerule drowningDamage true

# Gamerule 调整
gamerule doLimitedCrafting false
gamerule keepInventory true
gamerule mobGriefing true
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true