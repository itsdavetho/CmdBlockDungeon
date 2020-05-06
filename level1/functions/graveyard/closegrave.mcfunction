# play a grass block place sound
execute if block 4846 14 -3572 air run playsound minecraft:block.grass.place player @s 4841.49 14.66 -3564.00 1 0.1 1
# inform the player the grave is filled
execute if block 4846 14 -3572 air run tellraw @s "The grave magically filled itself, how strange..."
# actually fill the land
execute if block 4846 14 -3572 air run fill 4843 15 -3573 4846 14 -3572 grass_block replace
# close coffin
function level1:graveyard/closecoffin
# command block
# execute if entity @s[x=4839,y=16,z=-3566,dx=2,dy=3,dz=2] run say hi
