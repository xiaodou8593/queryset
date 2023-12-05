#queryset:_get
# 输入queryset实体
# 数据临时化

data modify storage queryset:io set set from entity @s data.queryset
data modify storage queryset:io set_keys set from entity @s data.queryset_keys

scoreboard players operation queryset_gc int = @s queryset_gc
scoreboard players operation queryset_cnt int = @s queryset_cnt