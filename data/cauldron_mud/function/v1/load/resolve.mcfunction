
#> cauldron_mud:v1/load/resolve
#
# @within	#cauldron_mud:resolve
#

# If correct version, load the datapack
execute if score #cauldron_mud.major load.status matches 1 if score #cauldron_mud.minor load.status matches 3 if score #cauldron_mud.patch load.status matches 0 run function cauldron_mud:v1/load/main
