
#> cauldron_mud:v1/load/main
#
# @within	cauldron_mud:v1/load/resolve
#

# Avoiding multiple executions of the same load function
execute unless score #cauldron_mud.loaded load.status matches 1 run function cauldron_mud:v1/load/secondary

