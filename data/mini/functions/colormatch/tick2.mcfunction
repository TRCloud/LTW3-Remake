
# 检测玩家死亡
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ magma_block if score $state mem matches 5 run function mini:colormatch/player_lose_heart
execute as @a[tag=mini_running] at @s if block ~ ~-2 ~ magma_block if score $state mem matches 5 run function mini:colormatch/player_lose_heart

# 检测玩家背包
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:8b,tag:{game_item:1b},Count:1b}] run function mini:colormatch/game/show_floor_block

# 开始新的一轮
execute if score $countdown_fast mem matches 0 if score $color_match_type mem matches 0 run function mini:colormatch/game/remove_ground
execute if score $countdown_fast mem matches 0 if score $color_match_type mem matches 1 run function mini:colormatch/game/start_new_round

# TNT检测
# execute as @a[nbt={Inventory:[{id:"minecraft:tnt",Slot:-106b}]},tag=mini_running] run function item:special/new_tnt
# 判断盔甲架下是否有方块
# execute as @e[type=armor_stand,tag=tnt_leader] at @s if block ~ ~-1 ~ air run function 