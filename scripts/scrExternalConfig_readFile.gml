/// scrExternalConfig_readFile(filename): content
/// Reads the specified file and returns its content as a string

// http://jasonleeelliott.com/using-json-data/

var theJsonFile = file_text_open_read(argument0);
var theData = "";
while (!file_text_eof(theJsonFile)) {
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);

return theData;
