/// ifListConvertToArray(list_or_array);
/// convert list_or_array to array if it is a list

if (ds_exists(argument0, ds_type_list)) {
    // list
    var array;
    
    for (var i = ds_list_size(argument0); i >= 0; i--) {
        array[i] = argument0[| i];
    }
    return array;
} else {
    return argument0;
}
