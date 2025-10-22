-- Conversion de coordenadas cartesianas a polares y viceversa
-- (1er cuadrante)

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

procedure ejercicio_10 is

   -- Declaracion de subprogramas
   -- Subprograma para leer un polinomio
   procedure Leer(Coef_A : out Integer; Coef_B : out Integer; Coef_C : out Integer) is
   begin
      Put_Line("Introduce los coeficientes del polinomio Ax^2 + Bx + C");
      Put("Coeficiente A: ");
      Get(Coef_A);
      Put("Coeficiente B: ");
      Get(Coef_B);
      Put("Coeficiente C: ");
      Get(Coef_C);
      Skip_Line;
   end Leer;
   
   -- Subprograma para escribir un polinomio en forma habitual
   procedure Escribir(Coef_A : in Integer; Coef_B : in Integer; Coef_C : in Integer) is
      Primero : Boolean := True;
   begin
      Put("Polinomio: ");
      
      -- Término A*x^2
      if Coef_A /= 0 then
         if Coef_A = 1 then
            Put("x^2");
         elsif Coef_A = -1 then
            Put("-x^2");
         else
            Put(Coef_A, Width => 0);
            Put("x^2");
         end if;
         Primero := False;
      end if;
      
      -- Término B*x
      if Coef_B /= 0 then
         if not Primero then
            if Coef_B > 0 then
               Put(" + ");
               if Coef_B = 1 then
                  Put("x");
               else
                  Put(Coef_B, Width => 0);
                  Put("x");
               end if;
            else
               Put(" - ");
               if Coef_B = -1 then
                  Put("x");
               else
                  Put(abs(Coef_B), Width => 0);
                  Put("x");
               end if;
            end if;
         else
            if Coef_B = 1 then
               Put("x");
            elsif Coef_B = -1 then
               Put("-x");
            else
               Put(Coef_B, Width => 0);
               Put("x");
            end if;
            Primero := False;
         end if;
      end if;
      
      -- Término C
      if Coef_C /= 0 then
         if not Primero then
            if Coef_C > 0 then
               Put(" + ");
               Put(Coef_C, Width => 0);
            else
               Put(" - ");
               Put(abs(Coef_C), Width => 0);
            end if;
         else
            Put(Coef_C, Width => 0);
         end if;
      else
         if Primero then
            Put("0");
         end if;
      end if;
      
      New_Line;
   end Escribir;
   
   -- Subprograma para evaluar un polinomio en un punto
   procedure Evaluar(Coef_A : in Integer; Coef_B : in Integer; Coef_C : in Integer) is
      X : Float;
      Resultado : Float;
   begin
      Put("Introduce el valor de x: ");
      Get(X);
      Skip_Line;
      
      Resultado := Float(Coef_A) * X * X + Float(Coef_B) * X + Float(Coef_C);
      
      Put("P(");
      Put(X, Fore => 0, Aft => 2, Exp => 0);
      Put(") = ");
      Put(Resultado, Fore => 0, Aft => 2, Exp => 0);
      New_Line;
   end Evaluar;
   
   -- Subprograma para calcular la derivada
   procedure Derivar(Coef_A : in Integer; Coef_B : in Integer) is
      Der_A, Der_B, Der_C : Integer;
   begin
      -- La derivada de Ax^2 + Bx + C es 2Ax + B
      Der_A := 0;
      Der_B := 2 * Coef_A;
      Der_C := Coef_B;
      
      Put("Derivada: ");
      Escribir(Der_A, Der_B, Der_C);
   end Derivar;


   -- Declaracion de variables
   A, B, C : Integer := 0;
   iOpcion : Integer;

begin
   loop
      New_Line;
      Put_Line("MENU:");
      Put_Line("1. Fin");
      Put_Line("2. Leer un polinomio");
      Put_Line("3. Escribir un polinomio en su forma habitual");
      Put_Line("4. Evaluar un polinomio en un punto");
      Put_Line("5. Calcular el polinomio derivado");
      New_Line;
      Put("Selecciona una opcion: ");
      Get(iOpcion);
      Skip_Line;
      New_Line;
      
      case iOpcion is
         when 1 =>
            Put_Line("Finalizando programa...");
            exit;
            
            when 2 =>
            Leer(A, B, C);
            Put_Line("Polinomio leido correctamente.");
            
         when 3 =>
            Escribir(A, B, C);
            
         when 4 =>
            Evaluar(A, B, C);
            
         when 5 =>
            Derivar(A, B);
            
         when others =>
            Put_Line("Opcion no valida. Intenta de nuevo.");
      end case;
   end loop;
end ejercicio_10;
