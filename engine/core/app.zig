const std = @import("std");
const testing = std.testing;
const glfw = @import("../main.zig").glfw;

pub const Engine = struct {
    x: u16 = 100, 
    y: u16 = 100,
    width: u16 = 600, 
    height: u16 = 480, 
    name: []const u8,

    pub fn start_engine(self: *Engine) !void {
        try glfw.init(.{});
        defer glfw.terminate();

        const window =
            try glfw.Window.create(self.width, self.height, self.name, null, null, .{});
        defer window.destroy();
    
        while (!window.shouldClose()) {
            try glfw.pollEvents();
        }
    }
};

pub fn create_engine(x: u16, y: u16, width: u16, height: u16, name: []const u8) Engine {
    var engine = Engine {
        .x = x,
        .y = y,
        .width = width,
        .height = height,
        .name = name
    };

    return engine;
}

test "engine init" { 
    var engine: Engine = create_engine(100, 100, 640, 480, "enuma");

    engine.start_engine();
}
