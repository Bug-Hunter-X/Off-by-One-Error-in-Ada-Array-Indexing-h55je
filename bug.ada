```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Data'Range loop
      -- Incorrect use of My_Data'Range
      if My_Data(I) = 5 then
         Put_Line("Found 5 at index: " & Integer'Image(I));
         exit;
      end if;
   end loop;
exception
   when others =>
      Put_Line("An error occurred");
end Example;
```