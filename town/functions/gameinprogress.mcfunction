# place the "Game In Progress" sign
clone 4806 15 -3583 4806 15 -3583 

# remove the pressure plates 
setblock 4805 19 -3580 air
setblock 4806 19 -3580 air

# inform the player the game is now in Progress
tellraw @s "Sorry friend, this game is in progress!"

# command block
# execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] if block 4805 19 -3580 minecraft:light_weighted_pressure_plate run function town:gameinprogress