# summon mobs church floor - #ADDMYTHICMOBS
summon minecraft:skeleton 4868.34 20.00 -3528.50
summon minecraft:skeleton 4869.34 22.00 -3528.50
summon minecraft:zombie 4871.34 22.00 -3528.50
summon minecraft:zombie 4871.34 22.00 -3528.50
# kill the grass
fill 4844 15 -3573 4846 14 -3572 air destroy
fill 4843 15 -3573 4843 15 -3572 air destroy
stopsound @s
# make an explode
playsound minecraft:entity.generic.explode block @s 4844 16 -3573 1 0.1 1
playsound minecraft:music_disc.13 music @s
function level1:graveyard/closecoffin
# tell the player to look around
tellraw @s "What was that ?!.. I'd better investigate.."