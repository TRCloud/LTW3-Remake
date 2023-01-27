# 贸易专家地形生成错误修复

# 提示
#tellraw @a[team=playing] ["\n",{"text":">> ","color":"aqua","bold":true},"检测到当前对局小游戏为 ",{"text":"贸易专家","color":"green","bold":true},"为防止出现错误, 正在尝试重新生成地形, 请稍等!"]

# 重新生成地形
function mini:iron/game_init

# 继续玩家加入流程
function mini:trade/player_enter

# 管理员提示
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"green","bold":true},"地形生成成功, 距离正式开局还有 5s 的延迟, 请管理员自行检查是否生成成功, 下面为快捷操作命令"]
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"green","bold":true},{"text":"[重新生成]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function custom:fix/trade"}},{"text":"[强制终止游戏]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ltw:init"}}]
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"aqua","bold":true},"本消息仅管理可见"]