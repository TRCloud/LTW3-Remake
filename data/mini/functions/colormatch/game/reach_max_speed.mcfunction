advancement grant @a[tag=mini_running] only ltw:vs/colormatch1
title @a subtitle {"text":"⚜ 切换速度已达满速 ⚜","color":"gold"}
give @a[tag=mini_running] wooden_sword{Damage:58,Tag:"jituibang",display:{Name:'["§6§o<击退 II> 击退棒"]',Lore:['["巨踏马无敌好用的武器"]','["--BlueFunny_"]']},HideFlags:63,Enchantments:[{id:"minecraft:knockback",lvl:2s}]} 1
tellraw @a [{"text":"\n","color":"gold"},{"text":">> ","bold": true},{"text":"上帝给了你一把击退棒去当闸总\n"}]
title @a times 1 60 3
title @a title ""
playsound minecraft:entity.ender_dragon.growl player @a 0 1000000 0 1000000 1.5
scoreboard players set #max_speed mem 1