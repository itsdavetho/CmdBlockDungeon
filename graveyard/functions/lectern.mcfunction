# lectern operation & scoreboard
execute unless entity @p[ nbt= { Inventory: [ { tag: {garzonstrident: 1}  } ] } ] unless entity @e[name="Sir Garzon"] if block 4844 6 -3568 minecraft:lectern{Page:1} as @a[x=4840,y=5,z=-3574,dx=9,dy=4,dz=13] run function graveyard:summongarzon
execute if block 4844 6 -3568 minecraft:lectern{Page:1} if entity @e[name="Sir Garzon"] run data modify block 4844 6 -3568 Page set value 0