# check if the button is stuck
execute unless score @s tiernanoil matches 1 as @a[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9] run function level1:church/buttonstuck
# if they have oil to use on the button, remove it.
execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] run clear @s minecraft:honey_bottle{buttonoil:1}
# open the basement if the button has been oiled
execute if score @s tiernanoil matches 1 if block 4875 21 -3530 stone_button[powered=true] if block 4872 19 -3522 cobblestone as @a[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9] run function level1:church/openbasement
# close the basement if the button is on
execute if score @s tiernanoil matches 1 if block 4875 21 -3530 stone_button[powered=true] if block 4875 19 -3523 cobblestone_stairs[facing=east] as @a[x=4866, y= 19, z=-3531,dx=20,dy=10,dz=20] run function level1:church/closebasement