const std = @import("std");
const glfw = @import("../lib/glfw/build.zig");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const lib = b.addSharedLibrary("enuma", "main.zig", b.version(0, 0, 1));
    lib.setBuildMode(mode);
    lib.addPackage(glfw.pkg);
    try glfw.link(b, lib, .{});
    lib.install();

    const main_tests = b.addTest("main.zig");
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}

