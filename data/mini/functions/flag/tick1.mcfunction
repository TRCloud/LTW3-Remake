# TNT判断
execute as @a at @s if score @s tnt_countdown matches 1..100 run scoreboard players remove @s tnt_countdown 1
execute as @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] at @s if score @s tnt_countdown matches 1..100 run title @s actionbar [{"text":"冷却:","color": "aqua"},{"score": {"name": "@s","objective": "tnt_countdown"},"color": "aqua"},{"text": "/0","color": "white"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] at @s if score @s tnt_countdown matches 0 run title @s actionbar {"text":"TNT冷却已结束!","color": "gold","bold": true}
execute as @e[type=tnt,tag=throwable_tnt] if entity @s[nbt={OnGround:1b}] at @s positioned ~ ~ ~ run data modify entity @s Fuse set value 0
# 火球判断
execute as @a at @s if score @s fireball_countdown matches 1..100 run scoreboard players remove @s fireball_countdown 1
execute as @a[tag=fireball_owner] at @s if score @s fireball_countdown matches 1..100 run title @s actionbar [{"text":"冷却:","color": "aqua"},{"score": {"name": "@s","objective": "fireball_countdown"},"color": "aqua"},{"text": "/0","color": "white"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:fire_charge"}}] at @s if score @s fireball_countdown matches 0 run title @s actionbar {"text":"火球冷却已结束!","color": "purple","bold": true}
# 旗帜加分
execute as @a[nbt={Inventory:[{Slot:8b,id:"minecraft:white_banner",tag:{display:{Name:'{"text":"Debug_Banner"}'}}}]}] at @s if block ~ ~-1 ~ minecraft:bedrock run function mini:flag/game/flag_add_score