with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure ejercicio_8 is
   
   procedure mi_funcion(p1, p2: Positive; iCociente, iResto: out Integer) is
      
      
   begin
      
      iResto := Integer(p1);
      iCociente := 0;
      while iResto >= p2 loop
         -- Sustraer el Divisor
         iResto := iResto - Integer(p2);
      
         -- Incrementar el Cociente
         iCociente := iCociente + 1;
      end loop;
      
   end mi_funcion;
   
   
   
   pT1, pT2: Positive;
   iT3, iT4: Integer;
   
begin
   
   Put("Introducir el numero a dividir: ");
   Get(pT1);
   Put("Introducir el divisor: ");
   Get(pT2);
   mi_funcion(pT1, pT2, iT3, iT4);
   Put("El cociente es: ");
   Put(iT3);
   New_Line;
   Put("El resto es: ");
   Put(iT4);
   
end ejercicio_8;
