# 初始化浮岛地图地图
forceload add 229 -198 183 -118

scoreboard players set $finish_mode mem 0
scoreboard players reset * flag_score

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

# 注入常量
scoreboard players set #2 mem 100

schedule function mini:flag/game_init2 5t replace