const std = @import("std");
const testing = std.testing;
const glfw = @import("glfw");

const Engine = struct {
    x: u16 = 100, 
    y: u16 = 100,
    width: u16 = 600, 
    height: u16 = 480, 
    name: []const u8,753

    pub fn start_engine(*Engine engine) !void {
        try glfw.init(.{});
        defer glfw.terminate();

        const window =
            try glfw.Window.create(engine.width, engine.height, engine.name, null, null, .{});
        defer window.destroy();
    
        while (!window.shouldClose()) {
            try glfw.pollEvents();
        }
    }
};

pub fn create_engine(x: u16, y: u16, width: u16, height: u16, name: []const u8) Engine {
    Engine engine = {
        .x = x,
        .y = y,
        .width = width,
        .height = height,
        .name = name
    };

    return engine;
}