LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY AdderSub IS
    PORT ( A : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
			  B : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
           Ctrl : IN  STD_LOGIC;
           Salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
           Cout : OUT STD_LOGIC);
END AdderSub;

ARCHITECTURE Behavioral OF AdderSub IS
BEGIN
    PROCESS(A, B, Ctrl)
        VARIABLE temp : STD_LOGIC_VECTOR(3 DOWNTO 0);
    BEGIN
            -- Operacion Adder (A + B)
        IF Ctrl = '0' THEN
            temp := (A) + (B);
            Salida <= temp;
            Cout <= '0'; -- En las sumas no hay acarreo de salida
        ELSE
            -- Operacion Subtract (A - B)
            temp := (A) + (NOT B) + "0001"; -- El complemento de B
            Salida <= temp;
            Cout <= temp(3); 
             END IF;
    END PROCESS;
END Behavioral;