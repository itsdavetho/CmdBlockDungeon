scoreboard players set @s tiernanoil 0
scoreboard players set @s tiernanspick 0
scoreboard players set @s tiernansaxe 0
scoreboard players set @s tiernanshoe 0
scoreboard players set @s tiernansrod 0
scoreboard players set @s garzonkilled 0

#close the fountain
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
kill @e[name="Tiernan"]
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

# reset lecterns
data modify block 4844 6 -3568 Page set value 0
data modify block 4814 16 -3508 Page set value 0