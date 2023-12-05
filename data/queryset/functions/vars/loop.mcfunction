#queryset:vars/loop

# 缓存名字
$data modify storage queryset:io string set value "$(name)"

# 检查变量是否已经存在
scoreboard players set sres int 0
$data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class "$(name)".uuid
execute as 0-0-0-8593-1 on origin run scoreboard players set sres int 1
$execute unless data storage queryset:class "$(name)" run scoreboard players set sres int 0
execute if data storage queryset:io {string:""} run scoreboard players set sres int 0

# 变量不存在则实例化
execute if score sres int matches 0 positioned -16 0 -16 summon marker run function queryset:vars/new

# 缓存next链表
execute unless data storage queryset:io next.next run data modify storage queryset:io next set value {}
data modify storage queryset:io next set from storage queryset:io next.next
execute if data storage queryset:io next.name run function queryset:vars/loop with storage queryset:io next