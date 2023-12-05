#queryset:print/custom_name

$data modify storage queryset:io custom_name set value $(CustomName)
data modify storage queryset:io temp_string_sub set from storage queryset:io custom_name.text