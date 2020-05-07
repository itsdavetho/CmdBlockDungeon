# turn the button off so it doesnt cycle this process again immediately
setblock 4875 21 -3530 stone_button[face=wall,facing=west,powered=false]
execute unless score @s tiernanoil matches 1 unless entity @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] as @s run setblock 4875 21 -3530 stone_button[face=wall,facing=west,powered=false]
execute unless score @s tiernanoil matches 1 unless entity @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] as @s run tellraw @s "Oh dear.. The button appears to be all corroded and won't budge! I should look around for something to help"
# set the score -- for ALL players in the arena so nobody is left behind
execute if entity @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] run scoreboard players set @a[x=4804,dx=304,y=0,dy=165,z=-3578,dz=231] tiernanoil 1
# play some sound
execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] run playsound minecraft:item.bucket.fill player @s 4875 21 -3530 1 0.1 1
# make delicious honey
execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] run particle minecraft:falling_honey 4875.85 21.52 -3529.45 0 0.3 0.15 1 100 normal
execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] run tellraw @s "I splashed the oil on the button. What a mess!"
# take their oil if they have any
execute if score @s tiernanoil matches 1 as @s[x=4866, y= 19, z=-3531,dx=9,dy=10,dz=9, nbt= { Inventory: [ { tag: {buttonoil:1}  } ] } ] run clear @s minecraft:honey_bottle{buttonoil:1}