#queryset:test/perf/branch_1

data modify storage queryset:io set set value {}
data modify storage queryset:io set_keys set value []
data modify storage queryset:io temp_set set from entity @e[tag=macro_set_0,limit=1] data.set
data modify storage queryset:io temp_set_keys set from entity @e[tag=macro_set_1,limit=1] data.set_keys
execute if data storage queryset:io temp_set_keys[0] run function queryset:test/perf/macro_loop