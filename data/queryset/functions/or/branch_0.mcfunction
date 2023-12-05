#queryset:or/branch_0

# 元素较少的<ssobj>作为添加的临时对象
data modify storage queryset:io temp_set set from storage queryset:io set
data modify storage queryset:io temp_strings set from storage queryset:io set_keys

# 元素较多的<@s>作为被添加的<ssobj>
data modify storage queryset:io set set from entity @s data.queryset
data modify storage queryset:io set_keys set from entity @s data.queryset_keys
scoreboard players operation queryset_cnt int = @s queryset_cnt