const std = @import("std");
const m = std.math;

pub const pi = 3.14159265358979323846;

pub fn sin(x: anytype) @TypeOf(x) { return m.sin(x); }
pub fn cos(x: anytype) @TypeOf(x) { return m.cos(x); }
pub fn tan(x: anytype) @TypeOf(x) { return m.tan(x); }

pub fn asin(x: anytype) @TypeOf(x) { return m.asin(x); }
pub fn acos(x: anytype) @TypeOf(x) { return m.acos(x); }
pub fn atan(x: anytype) @TypeOf(x) { return m.atan(x); }
