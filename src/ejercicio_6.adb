with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Ejercicio_6 is

   function mi_funcion(fNum: Float; iBer : Integer) return Float is

      fResultado : Float;
   begin

      fResultado := fNum ** iBer;
      return(fResultado);

   end mi_funcion;

   iT2: Integer;
   fT1: Float;
begin

 Put("Introducir el numero: ");
 Get(fT1);
 Put("Introducir el coeficiente de la potencia: ");
 Get(iT2);
 Put("El resultado es: ");
 Put(mi_funcion(fT1, iT2),Fore => 5, Aft => 2, Exp => 0);

end Ejercicio_6;
