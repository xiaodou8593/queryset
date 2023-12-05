#queryset:test/remove

function queryset:test/new
data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get

summon marker 0 11 0 {Tags:["tmp"],CustomName:'{"text":"A"}'}
summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'{"text":"B"}'}
summon marker 0 11 0 {Tags:["tmp"],CustomName:'{"text":"C"}'}
execute as @e[tag=tmp] run function queryset:_append

function queryset:_print
execute as @e[tag=tmp1,limit=1] run function queryset:_remove
function queryset:_print

kill @e[tag=tmp]