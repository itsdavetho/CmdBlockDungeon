# close the fountain in the centre
execute unless block 4845 6 -3541 stone run tellraw @s "The fountain seals back up..."
execute unless block 4845 6 -3541 stone run playsound minecraft:entity.blaze.ambient player @s 4844 3 -3542 1 0.1 1
execute unless block 4845 6 -3541 stone run playsound minecraft:block.stone.place player @s 4844 3 -3542 1 0.1 1
execute unless block 4845 6 -3541 stone run playsound minecraft:block.stone.place player @s 4844 3 -3542 1 0.1 1
execute unless block 4845 6 -3541 stone run playsound minecraft:block.stone.place player @s 4844 3 -3542 1 0.1 1
fill 4845 6 -3541 4843 4 -3543 stone replace
# close the door to bosses lair
execute if block 4842 2 -3542 minecraft:redstone_torch run setblock 4842 2 -3542 air

# command block
# execute unless entity @a[x=4842, y=3, z= -3544, dx=4,dy=5,dz=4, nbt= { Inventory: [ { tag: {garzonstrident: 1}  } ] } ] if entity @p[x=4842,y=3,z=-3544,dx=4,dy=5,dz=4] run function level1:town/closefountain