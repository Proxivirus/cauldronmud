
#> cauldron_mud:v1/load/tick_verification
#
# @within	#minecraft:tick
#

execute if score #cauldron_mud.major load.status matches 1 if score #cauldron_mud.minor load.status matches 3 if score #cauldron_mud.patch load.status matches 0 run function cauldron_mud:v1/tick

