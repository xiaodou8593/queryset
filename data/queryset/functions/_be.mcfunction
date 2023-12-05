#queryset:_be
# 以marker实体为执行者
# 输入storage queryset:io input

# 命名默认值
execute unless data storage queryset:io input.name run function queryset:set/default_name

# 设置属性
function queryset:set/attrs
tag @s add queryset_be