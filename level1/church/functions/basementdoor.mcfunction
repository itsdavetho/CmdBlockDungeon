execute if block 4875 21 -3530 minecraft:lever[powered=false] unless score @s tiernanoil matches 1 as @a[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9] run function church:leverstuck

execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {leveroil:1}  } ] } ] run clear @s minecraft:honey_bottle{leveroil:1}

execute if block 4872 19 -3522 cobblestone if block 4875 21 -3530 minecraft:lever[powered=false] as @a[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9] run function church:openbasement

execute if block 4875 19 -3523 cobblestone_stairs[facing=east] if block 4875 21 -3530 lever[powered=true] as @a[x=4866, y= 19, z=-3531,dx=20,dy=10,dz=20] run function church:closebasement

