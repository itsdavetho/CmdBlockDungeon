# indicate that the player is in the lobby - allow the players to be numerated once but no more after that to prevent lag
scoreboard players set @s inLobby 1
# reset track of players in game so its always up to date
scoreboard players reset @a level1players
# reset the players disconnect count so they aren't teleported back to lobby the first time
scoreboard players reset @s dungeonLeftGame
# increase scoreboard by one for each player in arena
execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run scoreboard players add @s level1players 1
# if the count is more than 2 they cant play
execute if entity @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231,scores={level1players=2..},x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] as @s run function level1:town/gameinprogress
# command block
# execute if entity @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] as @a[x=4804,y=18,z=-3582,dx=3,dy=2,dz=2] unless score @s inLobby matches 1 unless block 4806 19 -3580 air run function level1:town/numberplayers
