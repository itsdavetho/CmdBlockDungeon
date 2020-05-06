# set the chunks to force load incase all players disappear and we still need to restart [forceload add x1 y1 x2 y2]
forceload add 4804 -3578 5108 -3347
# place the "Game In Progress" sign
clone 4806 15 -3583 4806 15 -3583 4804 20 -3580 replace
# remove the pressure plates 
setblock 4805 19 -3580 air
setblock 4806 19 -3580 air
# set the players spawn point
execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run spawnpoint @s 4810 17 -3574
# set sidebar to show active players
team add level1 "Level 1"
team modify level1 color red
execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] run team join level1 @s
scoreboard objectives setdisplay sidebar.team.red level1players
# inform the player the game is now in Progress
tellraw @s "Sorry friend, this game is in progress!"
# numerize players for final count
function level1:town/numberplayers
# command block
# execute as @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] if block 4805 19 -3580 minecraft:light_weighted_pressure_plate run function level1:town/gameinprogress