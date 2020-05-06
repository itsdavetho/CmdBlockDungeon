execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run function town:resetplayer

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
kill @e[name="Bartok's Zombie"]
kill @e[name="Bartok's Skelly"]
kill @e[name="Bartok's Creeper"]

# close the fountain
execute run fill 4845 6 -3541 4843 4 -3543 stone replace
execute if block 4842 2 -3542 minecraft:redstone_torch run setblock 4842 2 -3542 air

## church basement
# remove the stairs
execute if block 4872 16 -3523 cobblestone_stairs[facing=east] run fill 4874 18 -3523 4871 15 -3522 air replace
execute if block 4872 19 -3522 minecraft:air run fill 4872 19 -3522 4875 19 -3523 minecraft:cobblestone replace
# close the wall
setblock 4875 21 -3530 lever[powered=true,face=wall,facing=west]
execute unless block 4865 15 -3526 minecraft:iron_block run fill 4865 17 -3527 4865 15 -3525 minecraft:iron_block replace
data modify block 4866 12 -3527 Items set value []

## graveyard - close grave
execute if block 4846 14 -3572 air run fill 4843 15 -3573 4846 14 -3572 grass_block replace
#close coffin
setblock 4845 7 -3566 minecraft:spruce_trapdoor[open=false,facing=north,half=bottom,powered=false]

## tool shed
# turn off the lights
fill 4859 14 -3509 4860 14 -3509 minecraft:air
#open the door
setblock 4857 17 -3509 minecraft:spruce_door[facing=east,half=upper,hinge=left,open=false,powered=false]
setblock 4857 16 -3509 minecraft:spruce_door[facing=east,half=lower,hinge=left,open=false,powered=false]

## reset lecterns
# burnt house
clone 4810 9 -3523 4810 9 -3523 4810 20 -3523 replace
# tiernans house
clone 4814 13 -3508 4814 13 -3508 4814 16 -3508 replace
# allisters house
clone 4870 11 -3544 4870 11 -3544 4874 19 -3541 replace
# church upstairs
clone 4881 21 -3531 4881 21 -3531 4873 21 -3526
# church downstairs
clone 4882 21 -3529 4882 21 -3529 4875 15 -3527
# graveyard
clone 4840 3 -3564 4840 3 -3564 4844 6 -3569

# destroy the reward loot chests
setblock 4831 3 -3544 air replace
setblock 4831 3 -3540 air replace

## set some prefilled loot boxes (chests, barrels etc)
# long house
clone 4797 15 -3575 4797 15 -3575 4834 12 -3512 replace
clone 4802 15 -3572 4802 15 -3572 4837 12 -3508 replace
# tiernans house
clone 4802 15 -3569 4802 15 -3569 4815 16 -3508 replace
clone 4799 15 -3571 4799 15 -3571 4818 19 -3512 replace
# allisters house
clone 4800 15 -3575 4800 15 -3575 4874 19 -3537 replace
# old shop
clone 4801 15 -3575 4801 15 -3575 4876 16 -3557 replace
# burnt house
clone 4801 16 -3569 4801 16 -3569 4809 20 -3523 replace

# "open" the doors
setblock 4805 19 -3580 minecraft:light_weighted_pressure_plate
setblock 4806 19 -3580 minecraft:light_weighted_pressure_plate

# put the button for bartok back
setblock 4831 4 -3542 minecraft:stone_button[face=floor,facing=west,powered=false]

# place the "Game Ready" sign
clone 4807 15 -3583 4807 15 -3583 4804 20 -3580 replace