#queryset:print/loop

data modify storage queryset:io string set from storage queryset:io temp_strings[0]
function queryset:print/next with storage queryset:io {}

# 循环迭代
data remove storage queryset:io temp_strings[0]
execute if data storage queryset:io temp_strings[0] run function queryset:print/loop