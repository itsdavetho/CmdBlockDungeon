# "boss tick" - these functions control the bosses 'form' sequencing

# bartok the fish spawns skeletal minions - this block of code controls their spawn.
# spawn skeletons around him as his minions
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #1"] unless block 4833 11 -3542 dirt as @s run schedule function level1:bosseslair/minionone 3s
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #2"] unless block 4832 11 -3542 dirt as @s run schedule function level1:bosseslair/miniontwo 3s
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #3"] unless block 4831 11 -3542 dirt as @s run schedule function level1:bosseslair/minionthree 3s
# change a block to dirt from diorite - dirt meaning the mob has spawned and we don't need to spawn another one
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #1"] if block 4833 11 -3542 diorite run setblock 4833 11 -3542 dirt
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #2"] if block 4832 11 -3542 diorite run setblock 4832 11 -3542 dirt
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #3"] if block 4831 11 -3542 diorite run setblock 4831 11 -3542 dirt

# summon the next form of the boss based on level1boss score
execute unless entity @e[name="Bartok the Fish"] if score @s level1boss matches 1 as @s run function level1:bosseslair/secondform
execute unless entity @e[name="Bartok the Zombie"] if score @s level1boss matches 2 as @s run function level1:bosseslair/thirdform
execute unless entity @e[name="Bartok the Illusioner"] if score @s level1boss matches 3 as @s run function level1:bosseslair/victory

# reset timer after 20 ticks- 1 second
scoreboard players reset @s bossTimer
# execute unless entity @e[name="Bartok the Zombie"] if score @s level1boss matches 2 as @s run function level1:bosseslair/thirdform