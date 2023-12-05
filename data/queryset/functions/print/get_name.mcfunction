#queryset:print/get_name

execute if data entity @s CustomName run function queryset:print/custom_name with entity @s {}
execute if data entity @s data.queryset_name run data modify storage queryset:io temp_string_sub set from entity @s data.queryset_name