give @s minecraft:fishing_rod{tiernansrod:1, display: {Name: "Tiernan's Fishing Rod"}}
tellraw @s "I found Tiernan's Fishing Rod! I don't think there's very many fish around here."
scoreboard players set @s tiernansrod 1
# command block
# execute if entity @p[x=4818,y=15,z=-3573,dx=2,dy=3,dz=2] unless entity @p[ nbt= { Inventory: [ { tag: {tiernansrod: 1}  } ] } ] if entity @p[ nbt= { Inventory: [ { tag: {tiernansjournal: 1}  } ] } ] if score @p tiernansrod matches ..0 as @p run function level1:tiernanshouse/takerod