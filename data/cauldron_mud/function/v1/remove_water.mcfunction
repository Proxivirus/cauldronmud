
#> cauldron_mud:v1/remove_water
#
# @within	cauldron_mud:v1/dirt
#

scoreboard players set #success cauldron_mud.dropped 0
execute if score #success cauldron_mud.dropped matches 0 store success score #success cauldron_mud.dropped if block ~ ~ ~ water_cauldron[level=3] run setblock ~ ~ ~ water_cauldron[level=2]
execute if score #success cauldron_mud.dropped matches 0 store success score #success cauldron_mud.dropped if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=1]
execute if score #success cauldron_mud.dropped matches 0 store success score #success cauldron_mud.dropped if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ cauldron
