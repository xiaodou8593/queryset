#queryset:or/loop

data modify storage queryset:io string set from storage queryset:io temp_strings[-1]

# 不在集合中则把元素添加到结果
function queryset:or/check with storage queryset:io {}

# 循环迭代
data remove storage queryset:io temp_strings[-1]
execute if data storage queryset:io temp_strings[-1] run function queryset:or/loop