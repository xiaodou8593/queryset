#queryset:and/append

# 添加元素
data modify storage queryset:io list_uuids append from storage queryset:io temp_uuids[-1]
data modify storage queryset:io list_strings append from storage queryset:io temp_strings[-1]
data modify storage queryset:io list_positions append from storage queryset:io temp_positions[-1]
scoreboard players add queryset_cnt int 1