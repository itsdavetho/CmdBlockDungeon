# hint that they may have missed the button ()
execute unless block 4865 15 -3526 minecraft:iron_block unless block 4844 15 -3573 air run tellraw @s "I must have missed something..."
# make a sound effect 
execute unless block 4865 15 -3526 minecraft:iron_block unless entity @a[x=4862,y=15,z=-3531,dx=3,dy=3,dz=10] run playsound minecraft:entity.wither.break_block block @s 4865 15 -3526 1 0.1 1
# make some particles
execute unless block 4865 15 -3526 minecraft:iron_block run particle smoke 4868.94 15.00 -3525.69 0 2 5 0.01 200
execute unless block 4865 15 -3526 minecraft:iron_block run particle minecraft:dust 1 1 1 10 4866.995 14.56 -3525.45 0 0.2 1 1 200
# reset the chest
data modify block 4866 12 -3527 Items set value []
# fill the wall
execute unless block 4865 15 -3526 minecraft:iron_block unless entity @a[x=4862,y=15,z=-3531,dx=3,dy=3,dz=10] run fill 4865 17 -3527 4865 15 -3525 minecraft:iron_block replace