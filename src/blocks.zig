const std = @import("std");

var y: i32 = 123;

pub fn main() void {
    // The way i look at blocks are as follows:
    // They are a convient way to create small functions inside of a function using a variable
    // it has a label and a break
    // the break is used to return a value from the block for instance in this block we are returning y
    // blocks are not global so it is only usefull for local calculations
    const x = add_one: {
        y += 1;
        break :add_one y;
    };

    if (x == 124 and y == 124) {
        std.debug.print("Hey! \n", .{});
    }
}
