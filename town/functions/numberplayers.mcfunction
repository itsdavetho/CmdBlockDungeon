# this will limit the amount of players in a room to 2-3 (depending on if it bugs out or not)

execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run scoreboard players reset @s level1players
execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run scoreboard players add @a level1players 1
execute if score @s level1players matches ..2 as @s run function town:gameinprogress

# command block
# execute as @a[x=4803,dx=5,y=19,dy=5,z=-3583,dz=5] unless block 4806 19 -3580 air run function town:numberplayers