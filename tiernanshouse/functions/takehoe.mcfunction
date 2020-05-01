give @s minecraft:iron_hoe{tiernanshoe:1, display: {Name: "Tiernan's Axe"}}
tellraw @s "You found Tiernan's hoe!"
scoreboard players set @s tiernanshoe 1
# command block
# execute if entity @p[x=4859,y=15,z=-3572,dx=2,dy=3,dz=2] unless entity @p[ nbt= { Inventory: [ { tag: {tiernanshoe: 1}  } ] } ] if entity @p[ nbt= { Inventory: [ { tag: {tiernansjournal: 1}  } ] } ] if score @p tiernanshoe matches ..0 as @p run function tiernanshouse:takehoe