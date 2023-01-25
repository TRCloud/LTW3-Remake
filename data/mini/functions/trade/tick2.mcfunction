tag @e[type=villager,tag=TradePlayer] remove tpPlayer
# 处理村民糊脸
execute as @a[team=playing,gamemode=survival] unless entity @s[nbt={SelectedItemSlot:8}] run tag @s add noVillager
execute as @a[team=playing,gamemode=survival] if entity @s[tag=noVillager] if score @s interactVillager matches 1.. at @s as @e[type=villager,tag=TradePlayer,distance=..5] run function mini:trade/game/villager_rebirth
execute as @a[team=playing,gamemode=survival] if score @s interactVillager matches 1.. run scoreboard players reset @s interactVillager
execute as @a[team=playing,gamemode=survival] if entity @s[nbt={SelectedItemSlot:8}] run function mini:trade/game/villager_tp
# 归位村民
tp @e[type=villager,tag=TradePlayer,tag=!tpPlayer] 1000 5 5000
# 给村民糊粒子
execute as @e[tag=tpPlayer] at @s run particle end_rod ~ ~0.1 ~ 0.15 0.1 0.15 0 3 normal @a
# 往手上塞纸
execute as @a[team=playing] unless data entity @s Inventory[{Slot:8b,tag:{game_item:1b},Count:1b}] run function mini:trade/game/paper_show
