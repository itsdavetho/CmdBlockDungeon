## reset an individual player
# leave the team
team leave @s

# change their spawn back
spawnpoint @s -157 8 -22

# reset scores
scoreboard players reset @s tiernanoil
scoreboard players reset @s tiernanspick
scoreboard players reset @s tiernansaxe
scoreboard players reset @s tiernanshoe
scoreboard players reset @s tiernansrod
scoreboard players reset @s garzonkilled
scoreboard players reset @s level1boss
scoreboard players reset @s dungeonDeaths
scoreboard players reset @s dungeonLeftGame

function level1:town/numberplayers

# remove any quest items -- trident will need to be adjusted for #ADDMYTHICMOBS
clear @s minecraft:written_book{tiernansjournal:1}
clear @s minecraft:honey_bottle{buttonoil:1}
clear @s minecraft:trident{garzonstrident:1}
clear @s minecraft:nether_star{unholysymbol: 1}
clear @s minecraft:diamond_pickaxe{tiernanspick: 1}
clear @s minecraft:stone_axe{tiernansaxe: 1}
clear @s minecraft:fishing_rod{tiernansrod: 1}
clear @s minecraft:iron_hoe{tiernanshoe: 1}

# send player to lobby
tp @s 4807 21 -3597 45 0

tellraw @s "You have been returned to the lobby"

stopsound @s