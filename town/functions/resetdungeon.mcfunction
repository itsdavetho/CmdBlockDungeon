scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanoil 0
scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanspick 0
scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernansaxe 0
scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanshoe 0
scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernansrod 0
scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] garzonkilled 0

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

# make some loot
# long house
data modify block 4834 12 -3512 Items set value [{Slot:0, id: arrow, Count: 8}, {Slot:2,id:cooked_porkchop,Count:2}]
data modify block 4837 12 -3508 Items set value [{Slot:0, id: arrow, Count: 10}]

# tiernans house
data modify block 4818 19 -3512 Items set value [{Slot:0, id: arrow, Count: 6}, {Slot:1, id: bread, Count: 3}]
data modify block 4809 20 -3523 Items set value [{Slot:6, id: brown_mushroom, Count:4}, {Slot: 3, id: red_mushroom, Count: 3}, {Slot: 1, id: bowl, Count: 3}, {Slot: 7, id: mushroom_stew, Count: 2}]

# burnt house
data modify block 4815 16 -3508 Items set value [{Slot:0, id: cooked_salmon, Count: 3}, {Slot: 5, id: iron_ingot, Count: 6}]