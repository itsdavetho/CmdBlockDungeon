# start the game if a player walks too far in either direction
execute if entity @a[x=4804,y=0,z=-3559,dx=30,dy=30,dz=3] run function level1:town/gameinprogress
execute if entity @a[x=4825,y=0,z=-3570,dx=3,dy=30,dz=30] run function level1:town/gameinprogress