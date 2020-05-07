scoreboard players add @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] tiernanState 1

execute if entity @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2,scores={tiernanState=1}] run function level1:toolshed/startscene
execute if entity @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2,scores={tiernanState=2}] run function level1:toolshed/tiernansghost
execute if entity @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2,scores={tiernanState=3}] run function level1:toolshed/tiernandialogue
execute if entity @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2,scores={tiernanState=4}] run function level1:toolshed/tiernanoil
execute if entity @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2,scores={tiernanState=5}] run function level1:toolshed/tiernanbye
execute if entity @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2,scores={tiernanState=6}] run function level1:toolshed/tiernandespawn
execute if entity @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2,scores={tiernanState=7}] run function level1:toolshed/tiernantele