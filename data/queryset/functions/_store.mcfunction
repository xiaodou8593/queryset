#queryset:_store
# 临时对象
# 输入queryset实体
# 数据储存化

data modify entity @s data.queryset set from storage queryset:io set
data modify entity @s data.queryset_keys set from storage queryset:io set_keys

scoreboard players operation @s queryset_gc = queryset_gc int
scoreboard players operation @s queryset_cnt = queryset_cnt int