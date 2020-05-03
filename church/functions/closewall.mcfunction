# hint that they may have missed the button ()
execute unless block 4865 15 -3526 minecraft:iron_block unless block 4844 15 -3573 air run tellraw @s "I must have missed something..."

# fill the wall
execute unless block 4865 15 -3526 minecraft:iron_block unless entity @a[x=4862,y=15,z=-3531,dx=3,dy=3,dz=10] run fill 4865 17 -3527 4865 15 -3525 minecraft:iron_block replace

# make a sound effect 
execute unless block 4865 15 -3526 minecraft:iron_block unless entity @a[x=4862,y=15,z=-3531,dx=3,dy=3,dz=10] run playsound minecraft:entity.wither.break_block block @s 4865 15 -3526 1 0.1 1

# make some particles
execute unless block 4865 15 -3526 minecraft:iron_block run particle minecraft:smoke 4865 15 -3526 1 1 1 1 100

# reset the chest
data modify block 4866 12 -3527 Items set value []