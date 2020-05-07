# thunder for the wall opening
execute if block 4865 17 -3527 iron_block run playsound minecraft:entity.lightning_bolt.thunder block @a[x=4862,y=14,z=-3531,dx=14,dy=15,dz=10] 4865 17 -3527 1 0.5 1
# make some particles
execute if block 4865 17 -3527 iron_block run particle minecraft:explosion 4867.00 15.85 -3525.53 2 2 2 1 10
# remove the wall
execute if block 4865 17 -3527 iron_block run fill 4865 17 -3527 4865 15 -3525 air replace
# reset the chest
data modify block 4866 12 -3527 Items set value []
# add decoy loot in straight ahead chest -- change this to a cloned chest later 
data modify block 4862 15 -3526 Items set value [{Slot:0,id:iron_ingot,Count:2},{Slot:1,id:stone_sword,Count:1,tag:{Enchantments:[{id:sharpness,lvl:1},{id:looting,lvl:1}]}},{Slot:2,id:cooked_porkchop,Count:2}, {Slot: 3, id: potion, tag: {Potion: "minecraft:healing"} } ]
# command block
# execute if block 4867 16 -3528 #minecraft:buttons[powered=true] if block 4866 12 -3527 minecraft:chest{Items:[{ tag: {unholysymbol:1} }]} run function level1:church/openwall