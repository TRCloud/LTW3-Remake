# 如果是土豆持有者在热土豆游戏中打到人，才执行下一步
execute if entity @s[tag=pm_holding] if entity @a[tag=pm_damage_taken,tag=!pm_holding] at @s run function mini:hotpm/game/transfer_potato

# 结束伤害判断
tag @a remove pm_damage_dealt
tag @a remove pm_damage_taken
