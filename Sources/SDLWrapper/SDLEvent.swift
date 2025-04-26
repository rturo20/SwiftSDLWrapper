import CSDL2

public struct SDLEvent {
    private var event: SDL_Event
    
    public init() {
        self.event = SDL_Event()
    }
    
    public var type: UInt32 {
        get { event.type }
        set { event.type = newValue }
    }
    
    // Add more event type properties as needed
    public var keyEvent: SDL_KeyboardEvent {
        get { event.key }
    }
    
    public var mouseButtonEvent: SDL_MouseButtonEvent {
        get { event.button }
    }
    
    public var mouseMotionEvent: SDL_MouseMotionEvent {
        get { event.motion }
    }
    
    public var windowEvent: SDL_WindowEvent {
        get { event.window }
    }
    
    // Internal access for use with SDL functions
    internal mutating func withEventPointer<T>(_ body: (UnsafeMutablePointer<SDL_Event>) -> T) -> T {
        withUnsafeMutablePointer(to: &event) { body($0) }
    }
}

// Extension to SDLWrapper to use the new SDLEvent type
extension SDLWrapper {
    public static func pollEvent(_ event: inout SDLEvent) -> Int32 {
        return event.withEventPointer { SDL_PollEvent($0) }
    }
} 