# 召唤史莱姆
summon slime 1013.5 6 10016.6 {Tags:[football],Size:1,CustomName:'["足球"]',CustomNameVisible:1b}
execute as @e[type=minecraft:slime,tag=football] run data merge entity @s {Size:2}
effect give @e[type=slime,tag=football] resistance 1000000 5 true
effect give @e[type=slime,tag=football] slowness 1000000 5 true
effect give @e[type=slime,tag=football] glowing 1000000 0 true
schedule function mini:slime/game/set_attack 1t
