#queryset:_unvars
# 删除选择集

# 找到选择集就删除
$execute unless data storage queryset:class $(name) run data modify entity 0-0-0-8593-1 Thrower set value [I;0,0,8593,2]
$data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class $(name).uuid
execute as 0-0-0-8593-1 on origin run function queryset:_del

# 缓存next链表
$data modify storage queryset:io next set value $(next)
execute if data storage queryset:io next.name run function queryset:vars/un_loop with storage queryset:io next