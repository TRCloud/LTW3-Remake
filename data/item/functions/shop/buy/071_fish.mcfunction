# 一次性钓鱼竿 (4g)
scoreboard players add @s shop_07_fish 0
tag @s remove canbuy
tag @s[scores={shop_07_fish=0,gold=36..}] add canbuy
tellraw @s[scores={shop_07_fish=1..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买了这个物品了!","color":"aqua"}]
tellraw @s[scores={shop_07_fish=0,gold=..35}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买这个物品!","color":"red"}]
tellraw @s[scores={shop_07_fish=..-1}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买上一级的物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"一次性钓鱼竿","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"一次性钓鱼竿","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_07_fish 1
scoreboard players remove @s[tag=canbuy] gold 36
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy