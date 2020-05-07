tellraw @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] "Tiernan: It's not much, but this may help you on your way.."
# give them oil for button 
give @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] honey_bottle{buttonoil:1, display: {Name:'[{"text":"Bottle of Oil","italic":true}]',Lore:['[{"text":"Tiernan said the church button can be fixed with this","italic":false}]']}} 1
execute as @a[x=4857,y=15,z=-3510,dx=4,dy=3,dz=2] unless entity @s[nbt= { Inventory: [ { tag: {buttonoil:1}  } ] }] run function level1:toolshed/dropoil 