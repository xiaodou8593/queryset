#queryset:test/append

function queryset:test/new

summon marker 0 11 0 {Tags:["tmp"],CustomName:'{"text":"A"}'}
summon marker 0 11 0 {Tags:["tmp"],CustomName:'{"text":"B"}'}
summon marker 0 11 0 {Tags:["tmp"],CustomName:'{"text":"C"}'}

data modify entity 0-0-0-8593-1 Thrower set from storage queryset:class test_qs.uuid
execute as 0-0-0-8593-1 on origin run function queryset:_get

execute as @e[tag=tmp] run function queryset:_append

data modify storage queryset:io input set value {run:"say hi"}
function queryset:_run

function queryset:_print

kill @e[tag=tmp]