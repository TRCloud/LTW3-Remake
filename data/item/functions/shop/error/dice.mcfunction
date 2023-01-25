tellraw @s[scores={gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"连一个金锭都没有, 就别再远程丢骰子啦!","color":"red"}]
tellraw @s[scores={gold=9..}] ["",{"text":">> ","color":"red","bold":true},{"text":"一金锭似乎连带着远程购物手续费的一金锭凭空出现在了老板面前, 但老板没有看见人影, 只好收下了双份金锭……","color":"red"}]
function lib:sounds/error
scoreboard players remove @s[scores={gold=9..}] gold 18
execute as @s run function item:shop/refresh_gold
scoreboard players set @s buy_trigger 0
