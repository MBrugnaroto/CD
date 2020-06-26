LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity full_adder4bits is
    
	 port (
	   a0,a1,a2,a3,b0,b1,b2,b3: in std_logic;
		s0,s1,s2,s3,count: out std_logic
	 
	 );
	 
end full_adder4bits;

architecture arq_full_adder4bits	of full_adder4bits is
signal tempc1, tempc2, tempc3: std_logic;

component MS1
		port (
						a, b: in std_logic;
						carry, sum: out std_logic
				);
end component;

component MS2
     port (
						c_in, x, y: in std_logic;
						s, c_out: out std_logic
				
		);
end component;

begin

     Half1: MS1
					port map(a => a0, b => b0, sum => s0, carry => tempc1);
	  
     Half2: MS2
               port map(x => a1, y => b1, s => s1, c_in => tempc1, c_out => tempc2);
		
     Half3: MS2
               port map(x => a2, y => b2, s => s2, c_in => tempc2, c_out => tempc3);	 
		
	  Half4: MS2
               port map(x => a3, y => b3, s => s3, c_in => tempc3, c_out => count);
					
end arq_full_adder4bits;
					
		
	  
     
