# 召唤史莱姆
summon slime 1020 7 10018 {Tags:[football],Size:1,CustomName:'["足球"]',CustomNameVisible:1b}
effect give @e[type=slime,tag=football] resistance 1000000 5 true
effect give @e[type=slime,tag=football] slowness 1000000 5 true
effect give @e[type=slime,tag=football] glowing 1000000 0 true
schedule function mini:slime/game/set_attack 1t
