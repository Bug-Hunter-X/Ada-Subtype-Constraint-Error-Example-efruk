```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   X : My_Sub_Type := 1;
begin
   X := X + 1;
   if X > 10 then
      -- Handle the case where X exceeds the subtype's range
      Put_Line("Value exceeds subtype range.");
   end if;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error: Value exceeds subtype range.");
end Example;
```
This improved version uses exception handling to gracefully deal with the `Constraint_Error`.  The `exception` block catches the exception and displays a user-friendly message.  Both the `if` statement and the `exception` handling provide robustness.