--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--Parte II
--1.

CREATE OR REPLACE FUNCTION Primera_Funcion(a IN NUMBER, b IN NUMBER,c IN NUMBER)
  RETURN VARCHAR IS 
  Z VARCHAR(255):='';
BEGIN
    IF   b >= c THEN
    Z:=(to_char(a) || '/' || 	to_char(a*b) || '/' || 'Juan');
  ELSE
    Z:=(to_char(a) || '/' || 	to_char(a*b) || '/' || 'Herrera');
  END IF;
  RETURN Z;
END;

SELECT Primera_Funcion(1,2,3) as RESULTADO FROM DUAL;
SELECT Primera_Funcion(3,2,1) as RESULTADO FROM DUAL;

-----------------------------------------------------------------------------------------
--2.

CREATE OR REPLACE FUNCTION  palindrome(a IN NUMBER, b IN NUMBER,c IN NUMBER)
     RETURN NUMBER IS 
declare
    n number;
    m number;
    rev number:=0;
    r number;

begin
    n:=12321;
    m:=n;
    
    while n>0
    loop
        r:=mod(n,10);
        rev:=(rev*10)+r;
        n:=trunc(n/10);
    end loop;
    
    if m=rev
    then
        dbms_output.put_line('Verdadero');
    else
        dbms_output.put_line('Falso');
    end if;
end;
     
SELECT palindrome(7) as RESULTADO FROM DUAL;    
    
CREATE OR REPLACE PROCEDURE  function_palindrome(N IN number) AS
	BEGIN
        dbms_output.put_line('El resultado es : '|| (palindrome));	
	END;
EXEC function_palindrome(3);