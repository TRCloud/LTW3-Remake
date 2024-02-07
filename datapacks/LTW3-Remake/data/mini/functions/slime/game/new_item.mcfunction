scoreboard players set $new_item_cd mem 0

# 随机选择生成组
scoreboard players set $random_min mem 0
scoreboard players set $random_max mem 2
function lib:random

# 生成物资
execute if score $random mem matches 0 positioned 1012 9.5 10012 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 0 positioned 1006 16 10027 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 475.5 29.5 -79.5 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 1 positioned 1029 16 10006 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 2 positioned 1012 9.5 10012 run function item:bonus_item/gameparty/auto/low
execute if score $random mem matches 2 positioned 1029 16 10006 run function item:bonus_item/gameparty/auto/low
execute as @e[tag=bonus_item] run data modify entity @s NoGravity set value 0b

# 显示提示
title @a subtitle {"text":"❇ 奖励物资已在空中部署 ❇","color":"aqua"}
title @a times 1 60 3
title @a title ""
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text":"奖励物资：","color":"aqua"},{"selector": "@e[tag=bonus_item]"}]
playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2