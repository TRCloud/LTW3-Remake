# mem的$bossbar_type: 0关闭 1countdown_fast 2count_down
# 玩家的bossbar_color: 1红 2黄 3绿 4蓝

# 每 0.1s 进行即时刷新
execute if score $bossbar_type mem matches 0 run function lib:bossbar/set_none
execute if score $bossbar_type mem matches 1 run function lib:bossbar/set_fast
execute if score $bossbar_type mem matches 2 run function lib:bossbar/set_slow2
