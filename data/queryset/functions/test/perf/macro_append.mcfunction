#queryset:test/perf/macro_append
$data modify storage queryset:io set."$(UUID)" set value {}
$data modify storage queryset:io set."$(UUID)".position set from entity @s Pos
$data modify storage queryset:io set_keys append value "$(UUID)"