const std = @import("std");
const stdout = std.io.getStdOut().writer();

//in zig you are able to check the type of object somethings is
// using @TypeOf()
pub fn main() !void {
    const simplyArray = [_]i32{ 1, 2, 3, 4, 5 };
    var string_obj: []const u8 = "Place Holder";
    const string_object = "Æ";
    if (true) string_obj = "This is a string object";

    _ = try stdout.write("Bytes that represents the string objects: ");
    for (string_object) |char| {
        try stdout.print("{X}", .{char});
    }
    std.debug.print("Type 1: {} \n", .{@TypeOf(simplyArray)});
    std.debug.print("Type 2: {} \n", .{@TypeOf("A string literal")});
    std.debug.print("Type 3: {} \n", .{@TypeOf(&simplyArray)});
    std.debug.print("Type 4: {} \n", .{@TypeOf(string_obj)});
    std.debug.print("{s} \n", .{string_obj});
}
