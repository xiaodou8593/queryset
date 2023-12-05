#queryset:and/loop


# 在集合中则把元素添加到结果
data modify storage queryset:io string set from storage queryset:io temp_strings[-1]
function queryset:and/check with storage queryset:io {}

# 循环迭代
data remove storage queryset:io temp_strings[-1]
execute if data storage queryset:io temp_strings[-1] run function queryset:and/loop