tellraw @a[x=4858,y=15,z=-3510,dx=4,dy=3,dz=3] "Tiernan: It's not much, but this may help you on your way.."
# give them oil for lever 
give @a[x=4858,y=15,z=-3510,dx=4,dy=3,dz=3] honey_bottle{leveroil:1, display: {Name:'[{"text":"Bottle of Oil","italic":true}]',Lore:['[{"text":"Tiernan said the church lever can be fixed with this","italic":false}]']}} 1
execute as @a[x=4858,y=15,z=-3510,dx=4,dy=3,dz=3] unless entity @s[nbt= { Inventory: [ { tag: {leveroil:1}  } ] }] run function level1:toolshed/dropoil 