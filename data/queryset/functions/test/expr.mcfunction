#queryset:test/expr

execute as @e[tag=queryset] run function queryset:_del

summon marker 0 11 0 {Tags:["tmp","tmp1"],CustomName:'"A"'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'"B"'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'"C"'}
summon marker 0 11 0 {Tags:["tmp","tmp1","tmp2"],CustomName:'"D"'}
summon marker 0 11 0 {Tags:["tmp","tmp2"],CustomName:'"E"'}

function queryset:_vars {name:"a", next:{name:"b", next:{name:"c"}}}

execute as @e[tag=tmp1] run function queryset:_method {from:"a", do:"append"}
execute as @e[tag=tmp2] run function queryset:_method {from:"b", do:"append"}
function queryset:_expr {from:"a", by:"b", to:"c", do:"and"}

function queryset:_method {from:"a", do:"print"}
function queryset:_method {from:"b", do:"print"}
function queryset:_method {from:"c", do:"print"}

kill @e[tag=tmp]