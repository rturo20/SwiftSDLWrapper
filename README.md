## SDLWrapper

**SDLWrapper** is a lightweight Swift library that provides a streamlined interface to the core functionality of [SDL2](https://www.libsdl.org/). Designed for simplicity and ease of use, it lets you quickly set up windows, render graphics, and handle events in your Swift projects.

**Available Commands:**

- `SDLWrapper.initialize()`  
  Initialize the SDL2 video subsystem.

- `SDLWrapper.createWindow(title:x:y:w:h:flags:)`  
  Create a new SDL2 window with specified parameters.

- `SDLWrapper.createRenderer(window:index:flags:)`  
  Create a renderer for a given window.

- `SDLWrapper.pollEvent(_:)`  
  Poll for pending SDL2 events.

- `SDLWrapper.setRenderDrawColor(_:r:g:b:a:)`  
  Set the drawing color for rendering.

- `SDLWrapper.renderClear(_:)`  
  Clear the current rendering target.

- `SDLWrapper.renderDrawPoint(_:x:y:)`  
  Draw a single point on the rendering target.

- `SDLWrapper.renderDrawLine(_:x1:y1:x2:y2:)`  
  Draw a line between two points on the rendering target.

- `SDLWrapper.renderDrawRect(_:x:y:w:h:)`  
  Draw the outline of a rectangle on the rendering target.

- `SDLWrapper.renderFillRect(_:x:y:w:h:)`  
  Draw a filled rectangle on the rendering target.

- `SDLWrapper.renderPresent(_:)`  
  Update the window with rendered content.

- `SDLWrapper.createTextureFromSurface(_:_:)`  
  Create a texture from an existing surface.

- `SDLWrapper.getWindowSize(_:)`  
  Get the size of a window. Returns a tuple of (width: Int32, height: Int32).

- `SDLWrapper.setWindowTitle(_:_:)`  
  Set a new title for an existing window.

- `SDLWrapper.getMouseState()`  
  Get the current mouse position and button state. Returns (x: Int32, y: Int32, buttons: UInt32).

- `SDLWrapper.delay(_:)`  
  Pause execution for a specified number of milliseconds.

- `SDLWrapper.destroyWindow(_:)`  
  Destroy an SDL2 window and free resources.

- `SDLWrapper.quit()`  
  Clean up and shut down the SDL2 subsystems.

- `SDLWrapper.getError()`  
  Retrieve the last SDL2 error message.

**Constants Provided:**

- `SDLWrapper.SDL_WINDOWPOS_UNDEFINED`
- `SDLWrapper.SDL_WINDOW_SHOWN`
- `SDLWrapper.SDL_QUIT`
- `SDLWrapper.SDL_RENDERER_ACCELERATED`
- `SDLWrapper.SDL_INIT_VIDEO`

**Note:**  
SDLWrapper currently covers essential SDL2 functionality. More features and commands will be added in future updates.

