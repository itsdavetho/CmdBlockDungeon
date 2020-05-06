#open the basement stair case:
#play sound
execute if block 4872 16 -3523 cobblestone_stairs[facing=east] run playsound minecraft:entity.zombie.attack_iron_door block @s 4871 20 -3523
# remove the stairs
execute if block 4872 16 -3523 cobblestone_stairs[facing=east] run fill 4874 18 -3523 4871 15 -3522 air replace
execute if block 4872 19 -3522 minecraft:air run fill 4872 19 -3522 4875 19 -3523 minecraft:cobblestone replace
# make sure everything is reset for next player
function level1:church/closewall
setblock 4875 21 -3530 lever[powered=true,face=wall,facing=west]
# command block
# execute if block 4872 19 -3522 cobblestone_stairs[facing=east] if block 4875 21 -3530 #minecraft:buttons[powered=true] run function level1:church/closebasement