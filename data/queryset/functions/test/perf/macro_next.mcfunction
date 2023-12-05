#queryset:test/perf/macro_next

$execute store success score sres int if data storage queryset:io temp_set."$(key)"
$execute if score sres int matches 1 run data modify storage queryset:io set."$(key)" set from storage queryset:io temp_set."$(key)"
$execute if score sres int matches 1 run data modify storage queryset:io set_keys append value "$(key)"