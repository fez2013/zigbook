const std = @import("std");
const stdout = std.io.getStdOut().writer();

//zig uses a very similar if else statement structure similar to a lot of different programming languages
// something new used here is the try and stdou.print statement not needing to use the std.debug.print just using the stdout.print
// using the zig library stdout
pub fn main() !void {
    const x = 5;
    if (x > 10) {
        try stdout.print("x > 10! \n", .{});
    } else {
        try stdout.print("x <= 10!\n", .{});
    }
}
