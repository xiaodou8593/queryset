#queryset:_clear
# 清空临时对象
scoreboard players set queryset_cnt int 0
data modify storage queryset:io set set value {}
data modify storage queryset:io set_keys set value []