# TNT冷却
execute as @a at @s if score @s tnt_countdown matches 1..100 run scoreboard players remove @s tnt_countdown 1
execute as @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] at @s if score @s tnt_countdown matches 1..100 run title @s actionbar [{"score": {"name": "@s","objective": "tnt_countdown"},"color": "aqua"},{"text": "/0","color": "white"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] at @s if score @s tnt_countdown matches 0 run title @s actionbar {"text":"TNT冷却已结束!","color": "gold","bold": true}
# TNT投掷
execute as @e[type=tnt,tag=throwable_tnt] if entity @s[nbt={OnGround:1b}] at @s positioned ~ ~ ~ run function item:special/tnt_boom