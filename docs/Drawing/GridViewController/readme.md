# Description
The GridViewController manages transformation of abstract 2d grid coordinates
to the ones used by gamemaker to actually render stuff in the room.

Using this, you can specify the position of objects using only abstracted grid coords.

# Usage
Use `translateGridToRealCoords` to manually transfer coords or use the decorators
`createInterface` or `drawSprite` to fully abstract the drawing.

# Internal
Its an decorator for ViewController, that adds grid coord handling.
