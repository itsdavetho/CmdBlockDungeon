give @s minecraft:diamond_pickaxe{tiernanspick:1, display: {Name: "Tiernan's Pickxe"}}
tellraw @s "I found Tiernan's pickaxe! Not much of an ore deposit is it?"
scoreboard players set @s tiernanspick 1
# command block
# /execute if entity @p[x=4804,y=17,z=-3512,dx=3,dy=3,dz=3] unless entity @p[ nbt= { Inventory: [ { tag: {tiernanspick: 1}  } ] } ] if entity @p[ nbt= { Inventory: [ { tag: {tiernansjournal: 1}  } ] } ] if score @p tiernanspick matches ..0 as @p run function level1:tiernanshouse/takepick