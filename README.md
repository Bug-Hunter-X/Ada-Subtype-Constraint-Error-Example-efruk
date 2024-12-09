# Ada Subtype Constraint Error

This example demonstrates a common error in Ada programming: exceeding the range of a subtype without proper error handling.  The code attempts to increment a variable beyond its defined range, which causes a `Constraint_Error` exception.  The solution shows how to handle this error gracefully.

## Bug
The `bug.ada` file contains code that can raise a `Constraint_Error` exception because the integer variable `X` is assigned a value beyond the defined range of the subtype `My_Sub_Type`.

## Solution
The `bugSolution.ada` file shows how to handle the `Constraint_Error` exception using a `when` statement in an exception handler.