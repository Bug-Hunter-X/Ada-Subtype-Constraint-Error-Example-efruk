```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   X : My_Sub_Type := 1;
begin
   X := X + 1;
   if X > 10 then
      -- Handle the case where X exceeds the subtype's range
   end if;
end Example;
```
This code has a potential for a Constraint_Error exception if `X` exceeds the range 1..10 of subtype `My_Sub_Type`.  The `if` statement checks for this, but it doesn't handle the error.  Ada's strong typing means that any attempt to assign a value outside the subtype range will raise an exception.