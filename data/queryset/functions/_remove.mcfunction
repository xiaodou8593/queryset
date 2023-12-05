#queryset:_remove
# 临时对象{<queryset_cnt,int>,<queryset_gc,int>,[queryset:io]}
# 输入<@s>移除临时选择集
# 输出<res,int>表示本来是否在选择集中

# 缓存<@s>数据
data modify storage queryset:io uuid set from entity @s UUID
# 判断元素是否已经在集合
function queryset:remove/next with storage queryset:io {}