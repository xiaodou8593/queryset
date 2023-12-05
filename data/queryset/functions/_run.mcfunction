#queryset:_run
# 临时对象{<queryset_cnt,int>,<queryset_gc,int>,[queryset:io]}
# 输入storage queryset:io input{run:"command",data:{}}

# 进入遍历指针的循环
scoreboard players operation queryset_loop int = queryset_cnt int
execute if score queryset_loop int matches 1.. as 0-0-0-8593-1 run function queryset:run/loop

# 执行队列
execute if score queryset_running int matches 0 if data storage queryset:io list_run[0] run function queryset:list_run/start

# 重置实体指针
data modify entity 0-0-0-8593-1 Thrower set value [I;0,0,8593,2]