#queryset:set/default_name

# 命名为选择集id
execute unless data storage queryset:io free_addr[-1] run function queryset:set/new_addr
data modify storage queryset:io input.name set from storage queryset:io free_addr[-1]
function queryset:set/set_default_name with storage queryset:io input