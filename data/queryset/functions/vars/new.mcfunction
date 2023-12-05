#queryset:vars/new

# 构造数据模板并实例化
data modify storage queryset:io input set value {gc_on:1b}
data modify storage queryset:io input.name set from storage queryset:io string
execute if data storage queryset:io {string:""} run data remove storage queryset:io input.name
function queryset:_be

# 设置属性
tag @s remove queryset_be
function queryset:vars/set_name with entity @s data

# 返回名字到输出
data modify storage queryset:io result append from entity @s data.queryset_name