# this will limit the amount of players in the game to 2-4 (hopefully 2) (depending on how many people can fit through the door at one time lol)
scoreboard players reset @a level1players
execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run scoreboard players add @s level1players 1
execute if entity @a[scores={level1players=2..}, x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] as @s run function town:gameinprogress
# command block
# execute as @a[x=4803,dx=5,y=19,dy=5,z=-3583,dz=5] unless block 4806 19 -3580 air run function town:numberplayers