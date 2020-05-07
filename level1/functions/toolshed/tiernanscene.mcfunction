scoreboard players add @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene 1
execute if score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 1 run function level1:toolshed/startscene
execute if score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 2 run function level1:toolshed/tiernansghost
execute if score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 3 run function level1:toolshed/tiernandialogue
execute if score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 4 run function level1:toolshed/tiernanoil
execute if score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 5 run function level1:toolshed/tiernanbye
execute if score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 6 run function level1:toolshed/tiernandespawn
execute if score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 7 run function level1:toolshed/tiernantele
execute unless score @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanScene matches 8 run schedule function level1:toolshed/tiernanscene 3s