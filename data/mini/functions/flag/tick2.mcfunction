# TNT手持判断
execute as @a[nbt={Inventory:[{id:"minecraft:tnt",Slot:-106b}]},tag=mini_running] at @s if score @s tnt_countdown matches 0 run function item:special/new_tnt