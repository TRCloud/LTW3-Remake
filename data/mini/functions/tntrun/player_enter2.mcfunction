# spreadplayer 后不能立即传送，所以延迟 1tick
execute as @a[team=playing,tag=!rejoining,team=!lobby] at @s run tp @s[team=!debugging,team=!lobby] ~ 34.5 ~