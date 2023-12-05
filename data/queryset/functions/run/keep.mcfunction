#queryset:run/keep

scoreboard players add res int 1

# 通过列表转动保存
data modify storage queryset:io list_uuids append from storage queryset:io list_uuids[0]
data modify storage queryset:io list_strings append from storage queryset:io list_strings[0]
data modify storage queryset:io list_positions append from storage queryset:io list_positions[0]