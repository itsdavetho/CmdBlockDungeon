# this will limit the amount of players in the game to 2
scoreboard players reset @a level1players
# increase scoreboard by one for each player in arena
execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run scoreboard players add @s level1players 1
# if the count is more than 2 they cant play
execute if entity @a[scores={level1players=2..}, x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] as @s run function level1:town/gameinprogress
# command block
# execute as @a[x=4803,dx=5,y=19,dy=5,z=-3583,dz=5] unless block 4806 19 -3580 air run function level1:town/numberplayers