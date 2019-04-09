library IEEE;
use IEEE.std_logic_1164.all;
library ieee;
    use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
    use ieee.std_logic_unsigned.all;
   
    entity Boot is
        port(x, y: in std_logic_vector(4 downto 0);
             O: out std_logic_vector(10 downto 0));
    end Boot;
   
    architecture boot of Boot is
        begin
           
            process(x, y)
             variable a: std_logic_vector(10 downto 0);
             variable s,p : std_logic_vector(4 downto 0);
             variable i:integer;


                begin
                    a := "00000000000";
                    s (4 downto 0) := y;
                   
                    for i in 0 to 4 loop
                       if(s(i) = '1') then
                         p:=x;
                          a(10 downto i) := a(10 downto i) + p;
                         
                
                       end if;
                      
      					               
                    end loop;
                    
                    O(10 downto 0) <= a(10 downto 0);
      
                   
                end process;
               
            end boot;
