#queryset:_elmof
# 临时对象{<queryset_cnt,int>,<queryset_gc,int>,[queryset:io]}
# 输入<@s>为被判断实体
# 输出<res,int>表示是否在选择集中

# 缓存<@s>数据
data modify storage queryset:io uuid set from entity @s UUID
# 判断元素是否已经在集合
function queryset:elmof/check with storage queryset:io {}