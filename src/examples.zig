const std = @import("std");

const age: u8 = 14;
var newAge: u8 = undefined;
const randomNum: u8 = 16;
// here we are showing how undefined works when used to initialize a variable
// We are also seing how to initialize a variable to discard it so you do not get errors in your code using _ = {variable}
// generally it is not recommended to use undefined just because it can bring problems when code base is large and you forget
// to assign the varialbe later on in the code
pub fn main() void {
    newAge = age + 4;
    _ = randomNum;
    std.debug.print("Your new age is: \n {} \n Your original age is: \n {} \n", .{ newAge, age });
    std.debug.print("We discarted the randomNum variable without errors \n", .{});
    std.debug.print("This means that the compiler destroys the variable and you can not use it anymore \n", .{});
    std.debug.print("Note that var varialbe need to be muted or else you will get an error in your code \n", .{});
}
