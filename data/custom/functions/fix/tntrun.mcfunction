# 地陷圣坛地板生成错误修复

# 锁定玩家
effect give @a[team=playing] blindness 1000000 255 true
effect give @a[team=playing] night_vision 1000000 255 true
effect give @a[team=playing] slowness 1000000 255 true

# 提示
#tellraw @a[team=playing] ["\n",{"text":">> ","color":"aqua","bold":true},"检测到当前对局小游戏为 ",{"text":"地陷圣坛","color":"red","bold":true},"为防止出现错误, 正在尝试重新生成地板, 请稍等!"]

# 重新生成地形
setblock 1000 9 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun000",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1000 10 2000 minecraft:redstone_block
setblock 1000 9 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun001",sizeY:32,sizeZ:8,showboundingbox:0b}
setblock 1000 10 2032 minecraft:redstone_block
setblock 1032 9 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun100",sizeY:32,sizeZ:32,showboundingbox:0b}
setblock 1032 10 2000 minecraft:redstone_block
setblock 1032 9 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun101",sizeY:32,sizeZ:8,showboundingbox:0b}
setblock 1032 10 2032 minecraft:redstone_block
setblock 1000 52 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun010",sizeY:10,sizeZ:32,showboundingbox:0b}
setblock 1000 51 2000 minecraft:redstone_block
setblock 1000 52 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun011",sizeY:10,sizeZ:8,showboundingbox:0b}
setblock 1000 51 2032 minecraft:redstone_block
setblock 1032 52 2000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun110",sizeY:10,sizeZ:32,showboundingbox:0b}
setblock 1032 51 2000 minecraft:redstone_block
setblock 1032 52 2032 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"chengzi_SC",rotation:"NONE",posX:0,mode:"LOAD",posY:-10,sizeX:9,posZ:0,integrity:1.0f,showair:0b,name:"mini:tntrun111",sizeY:10,sizeZ:8,showboundingbox:0b}
setblock 1032 51 2032 minecraft:redstone_block

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