# play the sound
execute if block 4846 14 -3572 air run playsound minecraft:block.grass.place player @s 4841.49 14.66 -3564.00 1 0.1 1

# inform the player
execute if block 4846 14 -3572 air run tellraw @s "The grave magically filled itself, how strange..."

# fill the land
execute if block 4846 14 -3572 air run fill 4843 15 -3573 4846 14 -3572 grass_block replace

# close coffin
setblock 4845 7 -3566 minecraft:spruce_trapdoor[open=false,facing=north,half=bottom,powered=false]

# command block
# execute if entity @p[x=4839,y=16,z=-3566,dx=2,dy=3,dz=2] run say hi
