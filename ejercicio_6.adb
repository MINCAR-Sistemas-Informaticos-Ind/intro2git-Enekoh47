with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;

procedure ejercicio_6 is
   -- Declaración de variables
   iLibras : Integer;
   iOnzas : Integer;
   fTotal_Libras : Float;
   fKilogramos : Float;
   
   -- Constantes de conversión
   fKg_Por_Libra : constant Float := 0.4536;
   iOnzas_Por_Libra : constant Integer := 16;
   
begin
   -- Título del programa
   Ada.Text_IO.Put_Line("=== CONVERSIÓN DE LIBRAS Y ONZAS A KILOGRAMOS ===");
   Ada.Text_IO.New_Line;
   
   -- Entrada de datos
   Ada.Text_IO.Put("Introduce el número de libras: ");
   Ada.Integer_Text_IO.Get(iLibras);
   
   Ada.Text_IO.Put("Introduce el número de onzas: ");
   Ada.Integer_Text_IO.Get(iOnzas);
   
   -- Validaciones
   if iLibras < 0 then
      Ada.Text_IO.Put_Line("Error: Las libras no pueden ser negativas.");
      return;
   end if;
   
   if iOnzas < 0 or iOnzas >= iOnzas_Por_Libra then
      Ada.Text_IO.Put_Line("Error: Las onzas deben estar entre 0 y 15.");
      return;
   end if;
   
   -- Cálculos
   -- Convertir las onzas a fracción de libra y sumar a las libras totales
   fTotal_Libras := Float(iLibras) + Float(iOnzas) / Float(iOnzas_Por_Libra);
   
   -- Convertir el total de libras a kilogramos
   fKilogramos := fTotal_Libras * fKg_Por_Libra;
   
   -- Mostrar resultados
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line("=== RESULTADO DE LA CONVERSIÓN ===");
   Ada.Text_IO.New_Line;
   
   Ada.Text_IO.Put("Peso ingresado: ");
   Ada.Integer_Text_IO.Put(iLibras, Width => 1);
   Ada.Text_IO.Put(" libras y ");
   Ada.Integer_Text_IO.Put(iOnzas, Width => 1);
   Ada.Text_IO.Put_Line(" onzas");
   
   Ada.Text_IO.Put("Total en libras: ");
   Ada.Float_Text_IO.Put(fTotal_Libras, Fore => 1, Aft => 4, Exp => 0);
   Ada.Text_IO.Put_Line(" libras");
   
   Ada.Text_IO.Put("Equivalente en kilogramos: ");
   Ada.Float_Text_IO.Put(fKilogramos, Fore => 1, Aft => 4, Exp => 0);
   Ada.Text_IO.Put_Line(" kg");
   
   Ada.Text_IO.New_Line;
      
   
end ejercicio_6;
