#queryset:and/check

$execute unless data storage queryset:io temp_set."$(string)" run return 0
# 添加元素
$data modify storage queryset:io set."$(string)" set from storage queryset:io temp_set."$(string)"
data modify storage queryset:io set_keys append from storage queryset:io temp_strings[-1]
scoreboard players add queryset_cnt int 1