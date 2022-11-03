const std = @import("std");
const testing = std.testing;

const Engine = struct {
    x: u16 = 100, 
    y: u16 = 100,
    width: u16 = 600, 
    height: u16 = 480,
    name: []const u8
};

pub fn create_engine(x: u16, y: u16, width: u16, height: u16, name: []const u8) Engine {
}
