tag @s add tempPlayerTp
execute as @e[type=villager,tag=TradePlayer] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run function mini:trade/game/villager_tp2
tag @s remove noVillager
tag @s remove tempPlayerTp
