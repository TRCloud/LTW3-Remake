# 第八格
execute unless data entity @s[team=watching,tag=pass_setup] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_watch:1b}}] run function ltw:state/0/state/join_game
execute if data entity @s[team=watching] Inventory[{tag:{lobby_item:1b,lobby_ready:1b}}] run clear @s lime_dye{lobby_item:1b,lobby_ready:1b} 
execute unless data entity @s[team=playing,tag=pass_setup] Inventory[{Slot:8b,tag:{lobby_item:1b,lobby_ready:1b}}] run function ltw:state/0/state/join_watch
execute if data entity @s[team=playing] Inventory[{tag:{lobby_item:1b,lobby_watch:1b}}] run clear @s gray_dye{lobby_item:1b,lobby_watch:1b}

# 清除临时物品
clear @s crimson_button{LockTempItem:1b}
