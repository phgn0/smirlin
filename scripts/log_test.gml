/// log(*args)
/// Logs something just to test, reference to this function should
///   be removed after tests are done.

var text = "";
for (var i = 0; i < argument_count - 1; i++) {
    text += string(argument[i]) + ", ";
}
text += argument[i + 1];

log("Test", text);
