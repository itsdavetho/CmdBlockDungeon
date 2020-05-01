# break some stone blocks, replace with water
execute run fill 4845 6 -3541 4843 4 -3543 water destroy

# a message to inform the fountain is open
execute run tellraw @p "The bottom of the fountain breaks away revealing a secret passage! The magical trident shatters after consuming it's final charge..."

# make some sounds
execute run playsound minecraft:block.stone.break block @p 4842 6 -3544 1 0.1 1
execute run playsound minecraft:block.stone.break block @p 4843 5 -3543 1 0.1 1
execute run playsound minecraft:block.stone.break block @p 4841 2 -3544 1 0.1 1
execute run playsound minecraft:block.stone.break block @p 4842 4 -3545 1 0.1 1
execute run playsound minecraft:item.trident.thunder block @p 4842 6 -3544 1 0.5 1

# make some particles
execute run particle minecraft:explosion 4865 15 -3526 2 2 2 1 10

# take away the trident
execute run clear @p trident{garzonstrident: 1}

# command block
# execute if entity @p[nbt={Inventory:[{id:"minecraft:trident",tag:{garzonstrident: 1}] if entity @p[x=4842,y=3,z=-3544,dx=4,dy=5,dz=4] run function town:openfountain