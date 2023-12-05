#queryset:_expr

# 临时化第一个选择集
$data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class "$(from)".uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get

# 用第二个选择集操作第一个选择集
$data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class "$(by)".uuid
$execute as 0-0-0-8593-1 on origin run function queryset:_$(do)

# 储存化给第三个选择集
$data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class "$(to)".uuid
execute as 0-0-0-8593-1 on origin run function queryset:_store