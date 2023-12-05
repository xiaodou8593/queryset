#queryset:_new
# 输入storage queryset:io input

# 命名默认值
execute unless data storage queryset:io input.name run function queryset:set/default_name

# 生成queryset的marker实体并初始化设置
execute positioned -16 0 -16 summon marker run function queryset:set