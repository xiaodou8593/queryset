#queryset:test/select

function queryset:test/new

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get
function queryset:_print