# 使用苦力怕刷怪蛋调用函数
execute as @a[tag=mini_running,scores={creeperUse=1..}] run function mini:ass/game/use_creeper
# 给予苦力怕刷怪蛋
execute as @a[tag=mini_running,scores={countdown_fast=0}] unless data entity @s Inventory[{Slot:-106b,id:"minecraft:creeper_spawn_egg",tag:{game_item:1b}}] run function mini:ass/game/give_creeper

# 给予击退棒
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot:8b,id:"minecraft:lightning_rod",tag:{game_item:1b}}] run function mini:ass/game/give_stick

# 同步生命值
scoreboard players reset * health_alive
scoreboard players set @a[gamemode=!spectator] health_alive 20
execute as @a[gamemode=!spectator,scores={health=1..}] run scoreboard players operation @s health_alive = @s health