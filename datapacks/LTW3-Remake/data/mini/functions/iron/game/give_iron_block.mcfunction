give @s iron_block
scoreboard players remove #iron_block_count temp 1
execute if score #iron_block_count temp matches 1.. run function mini:iron/game/give_iron_block
