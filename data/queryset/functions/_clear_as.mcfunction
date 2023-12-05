#queryset:_clear_as
# 清空<@s>
scoreboard players set @s queryset_cnt 0
data modify entity @s data.queryset set value {}
data modify entity @s data.queryset_keys set value []