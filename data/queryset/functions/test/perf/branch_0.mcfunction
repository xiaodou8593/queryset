#queryset:test/perf/branch_0

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_0.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs_1.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_and