/// array_of(*args): [*args]
/// Returns an array of all provided arguments.

var array;

// backwards is more efficient
for (var i = argument_count - 1; i >= 0; i--) {
    array[i] = argument[i];
};

return array;
