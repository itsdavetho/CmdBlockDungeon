# inform the player they have achieved victory
tellraw @s "I have slayed the vicious Bartok!"

# a message to inform the fountain is open
execute run tellraw @s "I think I heard the fountain open back up."
execute run fill 4845 6 -3541 4843 4 -3543 water destroy

# place the loot
clone 4793 9 -3593 4793 9 -3593 4831 3 -3544 replace
clone 4802 16 -3575 4802 16 -3575 4831 3 -3540 replace

# make some fireworks
summon firework_rocket 4829 1 -3549 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;11743532,2437522,2651799,14188952,4312372,6719955,12801229,15435844],FadeColors:[I;1973019,3887386,8073150,14602026]}]}}}}
summon firework_rocket 4835 1 -3538 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;11743532,2437522,2651799,14188952,4312372,6719955,12801229,15435844],FadeColors:[I;1973019,3887386,8073150,14602026]}]}}}}
summon firework_rocket 4826 1 -3537 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;1973019,3887386,5320730,8073150,2651799,14602026,6719955,15435844],FadeColors:[I;11743532,5320730,14188952,14602026,6719955,15790320]},{Type:2,Flicker:0,Trail:0,Colors:[I;1973019,11743532,5320730,6719955,15435844],FadeColors:[I;11743532,3887386,14188952,4312372]}]}}}}
summon firework_rocket 4831 3 -3542 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;1973019,3887386,5320730,8073150,2651799,14602026,6719955,15435844],FadeColors:[I;11743532,5320730,14188952,14602026,6719955,15790320]},{Type:1,Flicker:0,Trail:0,Colors:[I;1973019,3887386],FadeColors:[I;1973019,3887386]}]}}}}

# scoreboard update
scoreboard players set @s level1boss 4