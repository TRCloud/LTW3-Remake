# 地陷圣坛地板生成错误修复

# 锁定玩家
effect give @a[team=playing] blindness 1000000 255 true
effect give @a[team=playing] night_vision 1000000 255 true
effect give @a[team=playing] slowness 1000000 255 true

# 提示
#tellraw @a[team=playing] ["\n",{"text":">> ","color":"aqua","bold":true},"检测到当前对局小游戏为 ",{"text":"地陷圣坛","color":"red","bold":true},"为防止出现错误, 正在尝试重新生成地板, 请稍等!"]

# 销毁原地形
fill 1000 53 2000 1015 4 2039 air replace
fill 1016 53 2000 1031 4 2039 air replace
fill 1032 53 2000 1040 4 2039 air replace

# 重新生成地形
function mini:tntrun/game_init

# 解锁玩家
effect clear @a[team=playing] blindness
effect clear @a[team=playing] night_vision
effect clear @a[team=playing] slowness

# 继续玩家加入流程
function mini:tntrun/player_enter

# 管理员提示
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"green","bold":true},"地板生成成功, 距离正式开局还有 5s 的延迟, 请管理员自行检查是否生成成功, 下面为快捷操作命令"]
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"green","bold":true},{"text":"[重新生成]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function custom:fix/tntrun"}},{"text":"[强制终止游戏]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ltw:init"}}]
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"aqua","bold":true},"本消息仅管理可见"]