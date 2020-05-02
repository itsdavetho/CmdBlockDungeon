give @s minecraft:stone_axe{tiernansaxe:1, display: {Name: "Tiernan's Axe"}}
tellraw @s "I found Tiernan's axe! I wouldn't have considered this exactly lost!"
scoreboard players set @s tiernansaxe 1
# command block
# execute if entity @p[x=4827,y=15,z=-3561,dx=4,dy=3,dz=4] unless entity @p[ nbt= { Inventory: [ { tag: {tiernansaxe: 1}  } ] } ] if entity @p[ nbt= { Inventory: [ { tag: {tiernansjournal: 1}  } ] } ] if score @p tiernansaxe matches ..0 as @p run function tiernanshouse:takeaxe