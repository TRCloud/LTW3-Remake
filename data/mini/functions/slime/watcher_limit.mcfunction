# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=10001,dx=64,dy=10,dz=64] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=10001,dx=64,dy=10,dz=64] run tp @s[team=!debugging] 1018.32 7.87 10018.46 492.67 10.09
