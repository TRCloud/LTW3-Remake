execute as @a[team=playing] store result score @s posX run data get entity @s Pos[0] 10
execute as @a[team=playing] store result score @s posY run data get entity @s Pos[1] 10
execute as @a[team=playing] store result score @s posZ run data get entity @s Pos[2] 10
# TNT检测
execute as @a[nbt={Inventory:[{id:"minecraft:tnt",Slot:-106b}]},tag=mini_running] at @s if score @s tnt_countdown matches 0 run function item:special/new_tnt