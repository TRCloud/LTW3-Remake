# 计算值
scoreboard players operation #temp mem = $countdown mem
scoreboard players operation #temp mem *= #10 mem

# 设置值
execute store result bossbar mini:red value run scoreboard players get #temp mem
execute store result bossbar mini:yellow value run scoreboard players get #temp mem
execute store result bossbar mini:green value run scoreboard players get #temp mem
execute store result bossbar mini:blue value run scoreboard players get #temp mem
