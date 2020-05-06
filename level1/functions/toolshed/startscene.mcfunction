# reset the chest items 
data modify block 4861 16 -3508 Items set value []

# illuminate the shed, block off the door so they must complete the scene
fill 4860 14 -3509 4859 14 -3509 minecraft:redstone_torch
setblock 4857 16 -3509 minecraft:cobblestone
setblock 4857 17 -3509 minecraft:cobblestone
# command block
# execute if block 4861 16 -3508 minecraft:trapped_chest{Items:[{ tag: {tiernanspick:1} }, { tag: {tiernansaxe:1} }, { tag: {tiernansrod:1} }, { tag: {tiernanshoe:1} } ]} unless entity @p[ nbt= { Inventory: [ { tag: {leveroil: 1}  } ] } ] as @p run function level1:toolshed/startscene