#queryset:print/next

# 选择命名输出
$data modify entity @s Thrower set value $(string)
data modify storage queryset:io temp_string_sub set value "?"
execute on origin run function queryset:print/get_name
function queryset:print/merge with storage queryset:io {}