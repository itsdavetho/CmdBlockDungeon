# spawn skeletons around him as his minions

execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #1"] unless block 4833 11 -3542 dirt as @s run schedule function bosseslair:minionone 3s

execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #2"] unless block 4832 11 -3542 dirt as @s run schedule function bosseslair:miniontwo 3s

execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #3"] unless block 4831 11 -3542 dirt as @s run schedule function bosseslair:minionthree 3s

execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #1"] if block 4833 11 -3542 diorite run setblock 4833 11 -3542 dirt
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #2"] if block 4832 11 -3542 diorite run setblock 4832 11 -3542 dirt
execute if entity @e[name="Bartok the Fish"] unless entity @e[name="Bartok's #3"] if block 4831 11 -3542 diorite run setblock 4831 11 -3542 dirt

execute unless entity @e[name="Bartok the Fish"] if score @s level1boss matches 1 as @s run function bosseslair:secondform