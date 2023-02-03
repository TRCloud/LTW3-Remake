execute as @e[tag=island_boot] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",ignoreEntities:1b,rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",integrity:1.0f,name:"mini:flag5"}
execute as @e[tag=island_boot] at @s run setblock ~ ~ ~ minecraft:redstone_block
kill @e[tag=island_boot]