execute unless score @s tiernanoil matches 1 unless entity @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {leveroil:1}  } ] } ] as @s run setblock 4875 21 -3530 lever[face=wall,facing=west,powered=true]
execute unless score @s tiernanoil matches 1 unless entity @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {leveroil:1}  } ] } ] as @s run tellraw @s "Oh dear.. The lever appears to be all corroded and won't budge! I should look around for something to help"
# set the score -- for ALL players in the arena so nobody is left behind
execute if entity @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {leveroil:1}  } ] } ] run scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanoil 1
# play some sound
execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {leveroil:1}  } ] } ] run playsound minecraft:item.bucket.fill player @s 4875 21 -3530 1 0.1 1
# take their oil if they have any
execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {leveroil:1}  } ] } ] run clear @s minecraft:honey_bottle{leveroil:1}