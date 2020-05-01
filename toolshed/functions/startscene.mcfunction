# reset the chest 
data modify block 4861 16 -3508 Items set value []

# illuminate the shed, block off the door
fill 4860 14 -3509 4859 14 -3509 minecraft:redstone_torch
setblock 4857 16 -3509 minecraft:cobblestone
setblock 4857 17 -3509 minecraft:cobblestone
#execute as @a[x=4858,y=15,z=-3510,dx=4,dy=3,dz=3] run schedule function toolshed:tiernansghost 3s
# command block
# execute if block 4861 16 -3508 minecraft:trapped_chest{Items:[{ tag: {tiernanspick:1} }, { tag: {tiernansaxe:1} }, { tag: {tiernansrod:1} }, { tag: {tiernanshoe:1} } ]} unless entity @p[ nbt= { Inventory: [ { tag: {leveroil: 1}  } ] } ] as @p run function toolshed:startscene