pub const App = @import("core/app.zig");
pub const Math = @import("math/math.zig");
pub const glfw = @import("glfw");

test "engine init" { 
    var engine: App.Engine = App.create_engine(100, 100, 640, 480, "enuma");

    engine.start_engine();
}
