# break some stone blocks, replace with water
fill 4845 6 -3541 4843 4 -3543 water destroy
# a message to inform the fountain is open, if they used the trident -- this will have to be adjusted for #ADDMYTHICMOBS
execute if entity @s[nbt={Inventory:[{id:"minecraft:trident",tag:{garzonstrident: 1}}]}] run tellraw @s "The bottom of the fountain breaks away revealing a secret passage! The magical trident shatters after consuming it's final charge..."
# make some sounds
playsound minecraft:block.stone.break block @s 4842 6 -3544 1 0.1 1
playsound minecraft:block.stone.break block @s 4843 5 -3543 1 0.1 1
playsound minecraft:block.stone.break block @s 4841 2 -3544 1 0.1 1
playsound minecraft:block.stone.break block @s 4842 4 -3545 1 0.1 1
playsound minecraft:item.trident.thunder block @s 4842 6 -3544 1 0.5 1
# make some particles
particle minecraft:explosion 4865 15 -3526 2 2 2 1 10
# take away the trident -- this will have to be adjusted for #ADDMYTHICMOBS
clear @s trident{garzonstrident: 1}
# command block
# execute as @a[x=4842,y=3,z=-3544,dx=4,dy=5,dz=4,nbt={Inventory:[{id:"minecraft:trident",tag:{garzonstrident: 1}}]}] run function level1:town/openfountain
# command block
# execute as @a[x=4842,y=3,z=-3544,dx=4,dy=5,dz=4,scores={level1boss=1..}] unless block 4845 6 -3541 water run function level1:town/openfountain