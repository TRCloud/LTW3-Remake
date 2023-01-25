
# 检测玩家死亡
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ magma_block if score $state mem matches 5 run function mini:colormatch/player_lose_heart
execute as @a[tag=mini_running] at @s if block ~ ~-2 ~ magma_block if score $state mem matches 5 run function mini:colormatch/player_lose_heart

# 检测玩家背包
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:8b,tag:{game_item:1b},Count:1b}] run function mini:colormatch/game/show_floor_block

# 开始新的一轮
execute if score $countdown_fast mem matches 0 if score $color_match_type mem matches 0 run function mini:colormatch/game/remove_ground
execute if score $countdown_fast mem matches 0 if score $color_match_type mem matches 1 run function mini:colormatch/game/start_new_round
