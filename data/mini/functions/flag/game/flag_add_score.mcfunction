clear @s white_banner 1
scoreboard players add @s flag_score 1
tellraw @s [{"text":"你提交了一个旗帜!","color":"green"},{"text":"你的得分是:","color":"green"},{"score":{"name":"@s","objective":"flag_score"}}]