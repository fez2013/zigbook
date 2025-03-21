// 1.6 in zig book
const std = @import("std");

// there are two ways to build an Array defining the size or using [_] to let zig read the size of the array
// these are statiac arrays meaning you can not add to them once they have been declared
const ns = [4]u8{ 48, 24, 12, 6 };
const ls = [_]f64{ 432.1, 87.2, 900.05 };
const a = [6]u8{ 34, 25, 12, 3, 67, 90 };
const b = [6]i16{ 15, 11, 34, 56, 89, 34 };
pub fn main() void {
    // this index selector works from start number and ends before the end number meaning it will select the number
    // before the specified end position
    const numSelector = ns[0..3];

    //using this selection will select all of the elemnts in the array
    const selectAllArray = ns[0..ns.len];

    // You can also use the starting position you want and with this syntax select all elemnts that follow the starting
    // position
    const startSelectAll = ns[1..];

    // ++ will merge arrays into one array
    const addedArrays = a ++ b;

    //the ** operator will replicate the array as many times as you would like
    const multiplecateArray = b ** 3;

    std.debug.print("First Array: \n {d} \n Second Array: \n {d} \n", .{ ns, ls });
    std.debug.print("To print Arrays you must add any or d inside of the argument that you will pass \n", .{});
    std.debug.print("------------------------------------------------------------------------------------------ \n \n", .{});
    //when printing an Array it seems like you need to add {any} inside of the brackets to pass an array object'
    std.debug.print("This is the 3rd number in the ns array: \n {d} \n", .{ns[2]});
    std.debug.print("This is the selector mode in zig used to select items between two positions \n {d} \n", .{numSelector});
    std.debug.print("This way selects all of the elements in the array: \n {d} \n", .{selectAllArray});
    std.debug.print("You can select a starting position select all of elements in the arrays following the starting position: \n {d} \n", .{startSelectAll});
    std.debug.print("------------------------------------------------------------------------------------------ \n \n", .{});

    // using the len property zig will tell us how many elements are in the array and or the slice that we created
    std.debug.print("Elements in ns array: {d}\n", .{ns.len});
    std.debug.print("Elements in numberSelector (our first slice): {d}\n", .{numSelector.len});
    std.debug.print("------------------------------------------------------------------------------------------ \n \n", .{});

    //Array operators
    //The ++ operator will merge two arrays into one array
    //Make sure that the arrays have to compatible with each other meaning their data types
    std.debug.print("If we add array a and array b we will get: \n{d}\n and the new arrays has {d} elements \n", .{ addedArrays, addedArrays.len });
    std.debug.print("If we use the ** operator on an array we replicate that array as many times as we suggest: \n {d} \n", .{multiplecateArray});
    std.debug.print("Now the new array has 3 times as many items: {d} \n", .{multiplecateArray.len});
    std.debug.print("------------------------------------------------------------------------------------------ \n \n", .{});
}
