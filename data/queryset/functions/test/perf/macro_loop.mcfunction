#queryset:test/perf/macro_loop

data modify storage queryset:io key set from storage queryset:io temp_set_keys[0]
function queryset:test/perf/macro_next with storage queryset:io {}

data remove storage queryset:io temp_set_keys[0]
execute if data storage queryset:io temp_set_keys[0] run function queryset:test/perf/macro_loop