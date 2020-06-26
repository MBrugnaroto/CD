LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity segment_somador is
    
	 port (
	  
	 
	 );
	 
end segment_somador;

architecture arq_segment_somador	of segment_somador is
signal tempc1, tempc2, tempc3: std_logic;

component full_adder4bits
		port (
						 a0,a1,a2,a3,b0,b1,b2,b3: in std_logic;
						 s0,s1,s2,s3,count: out std_logic
				);
end component;

component segment
     port (
						 D0: in std_logic_vector (3 downto 0);
				       s: out std_logic_vector (6 downto 0)
				
		);
end component;

begin

     Half1: MS1
					port map(a => a0, b => b0, sum => s0, carry => tempc1);

					
end arq_segment_somador;
					
		
	  
     
