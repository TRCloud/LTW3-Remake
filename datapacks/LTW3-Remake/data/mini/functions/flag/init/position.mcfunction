scoreboard players set $do mem 1
execute if score $do mem matches 1 if score $secondary_island mem > #0 mem run function mini:flag/init/position_island/secondary_island
execute if score $do mem matches 1 if score $wood_resource_island mem > #0 mem run function mini:flag/init/position_island/wood_resource_island
execute if score $do mem matches 1 if score $iron_resource_island mem > #0 mem run function mini:flag/init/position_island/iron_resource_island
execute if score $do mem matches 1 if score $diamond_resource_island mem > #0 mem run function mini:flag/init/position_island/diamond_resource_island
execute if score $do mem matches 1 if score $mines_resource_island mem > #0 mem run function mini:flag/init/position_island/mines_resource_island
execute if score $do mem matches 1 if score $shop_island mem > #0 mem run function mini:flag/init/position_island/shop_island

