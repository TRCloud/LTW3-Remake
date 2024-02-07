# 幻翼 密室
tellraw @a ["",{"text":">> ","color":"aqua","bold":true},{"text":"密室的大门已经开启!","color":"aqua"}]
fill 1032 23 6006 1032 19 6006 air destroy
fill 1031 17 6055 1031 22 6055 air destroy
setblock 1032 16 6006 emerald_block replace
setblock 1031 16 6055 emerald_block replace