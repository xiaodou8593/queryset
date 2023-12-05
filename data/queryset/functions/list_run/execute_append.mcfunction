#queryset:list_run/execute_append

# 传递执行数据
data modify storage queryset:io run_params set from storage queryset:io input
data modify storage queryset:io run_params.__uuid__ set from storage queryset:io uuid
data modify storage queryset:io list_run append from storage queryset:io run_params

# 选择成功
scoreboard players set sres int 1