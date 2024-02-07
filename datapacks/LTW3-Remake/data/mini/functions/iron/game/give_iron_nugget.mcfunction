give @s iron_nugget
scoreboard players remove #iron_nugget_count temp 1
execute if score #iron_nugget_count temp matches 1.. run function mini:iron/game/give_iron_nugget
