/// log(context_name, text, [importance_level])
/// Logs text to the debug console. Provide context_name to identify the
///   context in which the log occured.

enum importance_level {
    verbose,    // (default) 
    info,
    error,
    urgent  
}

var message = argument[0] + ":     " + string(argument[1]);

if (argument_count >= 3) {
    var level = argument[2];
} else {
    var level = importance_level.verbose; // default
}

if (level == importance_level.urgent) {
    show_message(message);
} else {
    show_debug_message(message);
}
