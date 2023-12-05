#queryset:sub/loop

# 如果元素不在集合中则跳出
data modify storage queryset:io string set from storage queryset:io temp_strings[0]
function queryset:sub/check with storage queryset:io {}
execute if score sres int matches 0 store result score res int run return 0

# 循环迭代
data remove storage queryset:io temp_strings[0]
execute if data storage queryset:io temp_strings[0] run function queryset:sub/loop