# 执行重生方法
function mini:iron/game/respawn

# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s blindness 3 0 true

# 处理玩家掉落物品
# 获取玩家死亡位置
kill @e[type=armor_stand,tag=dead_marker]
summon armor_stand 1000 0 5000 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["dead_marker"]}
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[0] double 0.1 run scoreboard players get @s posX
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[1] double 0.1 run scoreboard players get @s posY
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[2] double 0.1 run scoreboard players get @s posZ
# 生成铁锭物品
execute store result score #iron_count temp run clear @s iron_ingot
scoreboard players add #iron_count temp 2
execute if score #iron_count temp matches 3.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~ ~0.2 ~ {Tags:["temp_iron"],Item:{id:"minecraft:iron_ingot",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_iron,limit=1] store result entity @s Item.Count byte 0.33334 run scoreboard players get #iron_count temp
tag @e[type=item,tag=temp_iron,limit=1] remove temp_iron
# 生成生铁物品
execute store result score #raw_iron_count temp run clear @s raw_iron
scoreboard players add #raw_iron_count temp 2
execute if score #raw_iron_count temp matches 3.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~-0.1 ~0.2 ~0.1 {Tags:["temp_raw_iron"],Item:{id:"minecraft:raw_iron",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_raw_iron,limit=1] store result entity @s Item.Count byte 0.33334 run scoreboard players get #raw_iron_count temp
tag @e[type=item,tag=temp_raw_iron,limit=1] remove temp_raw_iron
# 生成圆石物品
execute store result score #cobblestone_count temp run clear @s cobblestone
scoreboard players add #cobblestone_count temp 2
execute if score #cobblestone_count temp matches 3.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~0.1 ~0.2 ~0.1 {Tags:["temp_cobblestone"],Item:{id:"minecraft:cobblestone",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_cobblestone,limit=1] store result entity @s Item.Count byte 0.33334 run scoreboard players get #cobblestone_count temp
tag @e[type=item,tag=temp_cobblestone,limit=1] remove temp_cobblestone
# 生成铁块物品
execute store result score #iron_block_count temp run clear @s iron_block
scoreboard players add #iron_block_count temp 2
execute if score #iron_block_count temp matches 3.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~0.1 ~0.2 ~0.1 {Tags:["temp_iron_block"],Item:{id:"minecraft:iron_block",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_iron_block,limit=1] store result entity @s Item.Count byte 0.33334 run scoreboard players get #iron_block_count temp
tag @e[type=item,tag=temp_iron_block,limit=1] remove temp_iron_block
# 生成铁粒物品
execute store result score #iron_nugget_count temp run clear @s iron_nugget
scoreboard players add #iron_nugget_count temp 2
execute if score #iron_nugget_count temp matches 9.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~-0.1 ~0.2 ~0.1 {Tags:["temp_iron_nugget"],Item:{id:"minecraft:iron_nugget",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_iron_nugget,limit=1] store result entity @s Item.Count byte 0.33334 run scoreboard players get #iron_nugget_count temp
tag @e[type=item,tag=temp_iron_nugget,limit=1] remove temp_iron_nugget
# 生成生铁块物品
execute store result score #raw_iron_block_count temp run clear @s raw_iron_block
scoreboard players add #raw_iron_block_count temp 2
execute if score #raw_iron_block_count temp matches 3.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~-0.1 ~0.2 ~0.1 {Tags:["temp_raw_iron_block"],Item:{id:"minecraft:raw_iron_block",Count:1b},Glowing:1b}
execute as @e[type=item,tag=temp_raw_iron_block,limit=1] store result entity @s Item.Count byte 0.33334 run scoreboard players get #raw_iron_block_count temp
tag @e[type=item,tag=temp_raw_iron_block,limit=1] remove temp_raw_iron_block
# 随机槽位掉落
function mini:iron/game/random_slot
function mini:iron/game/pop_slot
# 返还剩余物品给玩家
scoreboard players remove #iron_count temp 2
scoreboard players operation #iron_count temp *= #2 mem
scoreboard players operation #iron_count temp /= #3 mem
execute if score #iron_count temp matches 1.. run function mini:iron/game/give_iron
scoreboard players remove #raw_iron_count temp 2
scoreboard players operation #raw_iron_count temp *= #2 mem
scoreboard players operation #raw_iron_count temp /= #3 mem
execute if score #raw_iron_count temp matches 1.. run function mini:iron/game/give_raw_iron
scoreboard players remove #cobblestone_count temp 2
scoreboard players operation #cobblestone_count temp *= #2 mem
scoreboard players operation #cobblestone_count temp /= #3 mem
execute if score #cobblestone_count temp matches 1.. run function mini:iron/game/give_cobblestone
scoreboard players remove #iron_block_count temp 2
scoreboard players operation #iron_block_count temp *= #2 mem
scoreboard players operation #iron_block_count temp /= #3 mem
execute if score #iron_block_count temp matches 1.. run function mini:iron/game/give_iron_block
scoreboard players remove #iron_nugget_count temp 2
scoreboard players operation #iron_nugget_count temp *= #2 mem
scoreboard players operation #iron_nugget_count temp /= #3 mem
execute if score #iron_nugget_count temp matches 1.. run function mini:iron/game/give_iron_nugget
scoreboard players remove #raw_iron_block_count temp 2
scoreboard players operation #raw_iron_block_count temp *= #2 mem
scoreboard players operation #raw_iron_block_count temp /= #3 mem
execute if score #raw_iron_block_count temp matches 1.. run function mini:iron/game/give_raw_iron_block
# 删除marker
kill @e[type=armor_stand,tag=dead_marker]