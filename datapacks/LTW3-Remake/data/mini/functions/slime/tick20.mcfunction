# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3 14 2
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 检测是否存在史莱姆
execute at @a[team=playing] unless entity @e[type=slime,tag=football] run tellraw @a [{"text":"\n","color":"gold"},{"text":">> ","bold": true},{"text":"由于史莱姆似乎消失了,所以重新生成了一个!\n"}]
execute at @a[team=playing] unless entity @e[type=slime,tag=football] run function mini:slime/game/summon

# 给予成就
execute as @a[team=playing,scores={slime_score=5..}] run advancement grant @s only ltw:vs/slime1
execute as @a[team=playing,scores={slime_score=10..}] run advancement grant @s only ltw:vs/slime2
execute as @a[team=playing,scores={slime_score=15..}] run advancement grant @s only ltw:vs/slime3
execute as @a[team=playing,scores={slime_score=20..}] run advancement grant @s only ltw:vs/slime4

## 生成道具
# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0
# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=1000,y=0,z=10000,dx=100,dy=1000,dz=100] run scoreboard players set #new_item mem 1
# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 20s 冷却时间
execute if score $new_item_cd mem matches ..19 run scoreboard players set #new_item mem 1
# 存活玩家数（$player_alive）>= 3
execute if score $player_alive mem matches ..2 run scoreboard players set #new_item mem 1
# 死亡玩家数（$player_finish）<= 2
execute if score $player_finish mem matches 3.. run scoreboard players set #new_item mem 1
# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:slime/game/new_item

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end