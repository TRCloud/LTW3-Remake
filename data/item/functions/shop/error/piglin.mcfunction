tellraw @s[scores={gold=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你已经身无分文, 就别再远程购物啦!","color":"red"}]
tellraw @s[scores={gold=1..}] ["",{"text":">> ","color":"red","bold":true},{"text":"一颗金粒带着远程购物的手续费凭空出现在了猪灵面前, 但猪灵没有看见人影, 只好收下了双份金粒……","color":"red"}]
function lib:sounds/error
scoreboard players remove @s[scores={gold=2..}] gold 2
execute as @s run function item:shop/refresh_gold
scoreboard players set @s buy_trigger 0
