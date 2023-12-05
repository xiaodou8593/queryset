#queryset:init_overworld

# 生成uuid_marker
forceload add -1 -1 1 1
kill @e[tag=uuid_marker,type=minecraft:item]
summon item 0 -67 0 {Tags:["uuid_marker"],UUID:[I;0,0,-2053963776,1],NoGravity:1b,PickupDelay:32767s,CustomName:'{"text":"uuid_marker"}',Item:{id:"minecraft:glass",Count:1b}}

# 刷新uuid_marker的Age防止消失
schedule function queryset:update_age 1s replace