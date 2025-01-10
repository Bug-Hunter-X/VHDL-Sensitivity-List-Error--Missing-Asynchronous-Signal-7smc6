```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity wrong_sensitivity is
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    data_out : out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of wrong_sensitivity is
begin
  process (clk) -- Incorrect sensitivity list
  begin
    if rising_edge(clk) then
      data_out <= data_in;
    end if;
  end process;
end architecture;
```