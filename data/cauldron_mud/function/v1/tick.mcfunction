
#> cauldron_mud:v1/tick
#
# @within	cauldron_mud:v1/load/tick_verification
#

# Timers
scoreboard players add #second cauldron_mud.data 1
execute if score #second cauldron_mud.data matches 20.. run function cauldron_mud:v1/second
