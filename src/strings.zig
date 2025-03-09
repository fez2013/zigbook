const std = @import("std");
const stdout = std.io.getStdOut().writer();

// in zig strings are basically a slice of u8 values
// due to this strings contain two things pointer to an array of byes and length
pub fn main() !void {
    const object: []const u8 = "A string object";
    const bytes = [_]u8{ 0x48, 0x65, 0x6c, 0x6c, 0x6f };
    try stdout.print("{s} \n", .{bytes});
    try stdout.print("this is a: {s} \n", .{object});
}
