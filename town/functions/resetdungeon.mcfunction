# reset all players in the arena scores
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanoil
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanspick
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernansaxe
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanshoe
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernansrod
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] garzonkilled
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] level1boss
scoreboard players reset @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] dungeonDeaths

# change their spawn back
execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run spawnpoint @s -157 8 -22

# kill any special mobs
kill @e[name="Tiernan"]
kill @e[name="Sir Garzon"]
kill @e[name="Bartok the Zombie"]
kill @e[name="Bartok the Fish"]
kill @e[name="Bartok the Illusioner"]
kill @e[name="Bartok's #3"]
kill @e[name="Bartok's #2"]
kill @e[name="Bartok's #1"]
kill @e[name="Garzon's Pal"]

# close the fountain
execute run fill 4845 6 -3541 4843 4 -3543 stone replace
execute if block 4842 2 -3542 minecraft:redstone_torch run setblock 4842 2 -3542 air

# church basement
# remove the stairs
execute if block 4872 16 -3523 cobblestone_stairs[facing=east] run fill 4874 18 -3523 4871 15 -3522 air replace
execute if block 4872 19 -3522 minecraft:air run fill 4872 19 -3522 4875 19 -3523 minecraft:cobblestone replace
# close the wall
setblock 4875 21 -3530 lever[powered=true,face=wall,facing=west]
execute unless block 4865 15 -3526 minecraft:iron_block unless entity @a[x=4862,y=15,z=-3531,dx=3,dy=3,dz=10] run fill 4865 17 -3527 4865 15 -3525 minecraft:iron_block replace
data modify block 4866 12 -3527 Items set value []

# graveyard - close grave
execute if block 4846 14 -3572 air run fill 4843 15 -3573 4846 14 -3572 grass_block replace

# tool shed
# turn off the lights
fill 4859 14 -3509 4860 14 -3509 minecraft:air
#open the door
setblock 4857 17 -3509 minecraft:spruce_door[facing=east,half=upper,hinge=left,open=false,powered=false]
setblock 4857 16 -3509 minecraft:spruce_door[facing=east,half=lower,hinge=left,open=false,powered=false]

# remove any quest items
execute run clear @s minecraft:written_book{tiernansjournal:1}
execute run clear @s minecraft:honey_bottle{leveroil:1}
execute run clear @s minecraft:trident{garzonstrident:1}
execute run clear @s minecraft:nether_star{unholysymbol: 1}
execute run clear @s minecraft:diamond_pickaxe{tiernanspick: 1}
execute run clear @s minecraft:stone_axe{tiernansaxe: 1}
execute run clear @s minecraft:fishing_rod{tiernansrod: 1}
execute run clear @s minecraft:iron_hoe{tiernanshoe: 1}

#close coffin
setblock 4845 7 -3566 minecraft:spruce_trapdoor[open=false,facing=north,half=bottom,powered=false]

# reset (important) lecterns
data modify block 4844 6 -3568 Page set value 0
data modify block 4814 16 -3508 Page set value 0

# destroy the reward loot chests
setblock 4831 3 -3544 air
setblock 4831 3 -3540 air

# set some loot boxes (chests, barrels etc)
# long house
clone 4791 9 -3593 4791 9 -3593 4834 12 -3512 replace
clone 4789 9 -3591 4789 9 -3591 4837 12 -3508 replace

# tiernans house
clone 4795 9 -3589 4795 9 -3589 4815 16 -3508 replace
clone 4789 9 -3589 4789 9 -3589 4818 19 -3512 replace

# allisters house
clone 4792 8 -3589 4792 8 -3589 4874 19 -3537 replace

# old shop
clone 4792 9 -3593 4792 9 -3593 4876 16 -3557 replace

# burnt house
clone 4794 9 -3589 4794 9 -3589 4809 20 -3523 replace

# send all players to the lobby
tp @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] 4807 21 -3597 45 0

# "open" the doors
setblock 4805 19 -3580 minecraft:light_weighted_pressure_plate
setblock 4806 19 -3580 minecraft:light_weighted_pressure_plate

# put the button for bartok back
setblock 4831 4 -3542 minecraft:stone_button[face=floor,facing=west,powered=false]

# place the "Game Ready" sign
clone 4807 15 -3583 4807 15 -3583 4804 20 -3580 replace