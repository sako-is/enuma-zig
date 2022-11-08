const std = @import("std");
const assert = std.debug.assert;

pub fn Vec2(comptime T: type) type {
    return struct {
        const Self = @This();
        x: T,
        y: T,

        pub fn init(comptime x: T, comptime y: T) Self {
            return Self { .x = x, .y = y };
        }
    };
}

pub fn Vec3(comptime T: type) type {
    return struct {
        const Self = @This();
        x: T,
        y: T,
        z: T, 

        pub fn init(comptime x: T, comptime y: T, comptime z: T) Self {
            return Self { .x = x, .y = y, .z = z };
        }
    };
}

pub fn Vec4(comptime T: type) type {
    return struct {
        const Self = @This();
        x: T,
        y: T,
        z: T,
        w: T,

        pub fn init(comptime x: T, comptime y: T, comptime z: T, comptime w: T) Self {
            return Self { .x = x, .y = y, .z = z, .w = w };
        }
    };
}

pub fn Mat4(comptime T: type) type {
    return struct {
        const Self = @This();

        elements: [16]T,

        pub fn init(comptime elements: [16]T) Self {
            return Self { .elements = elements };
        }
    };
}

test "initializing vecs and mats" {
    const vec2 = Vec2(i32).init(10, 5); 

    std.log.info("x: {}, y: {}", .{ vec2.x, vec2.y });
    assert(vec2.x == 10);
    assert(vec2.y == 5);
}
