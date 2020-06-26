entity primeiro is
		port(
				a, b: in std_logic_vector (3 downto 0;
				sel: in std_logic_vector (1 downto 0);
				sel1: in std_logic_vector (1 downto 0);
				sel2: in std_logic_vector (1 downto 0);
				o1: out std_logic_vector (3 downto 0);
				o2: out std_logic_vector (3 downto 0);
				o3: out std_logic_vector (3 downto 0);
				t: out std_logic_vector (3 downto 0);
				carry: out std_logic
				
				);
		end primeiro;
		
	architecture arch_primeiro of primeiro is
	signal p1, p2, p3, p4: std_logic;
	
	component full_adder4bits
		port (
						 tempc1, tempc2, tempc3, a0,a1,a2,a3,b0,b1,b2,b3: in std_logic;
						 s0,s1,s2,s3,count: out std_logic
				);
		end component;

	
	begin
	
	with sel select
	o1 <=
	
			"a" when "0"
			"b" when "1"
			"" when others; 

	with sel1 select		
	o2 <= 
			
			"not(s1)" when "0"
			     "s1" when "1"
			"" when others;
	
	with sel2 select		
	o3 <= 
			
			   "b" when "0"
			"0001" when "1"
			"" when others;
		
	
	 Half1: full_adder4bits
					port map(a0 => s2[0], b0 => o3[0], s0 => t[0], tempc1 => p1);
					
	 Half2: full_adder4bits
					port map(a1 => s2[1], b1 => o3[1], s1 => t[1], tempc1 => p1, tempc2 => p2);
	 
	 Half3: full_adder4bits
					port map(a2 => s2[2], b2 => o3[2], s2 => t[2], tempc2 => p2, tempc2 => tempc3);
	
	 Half4: full_adder4bits
					port map(a3 => s2[3], b3 => o3[3], s3 => t[3], tempc3 => p4, count => carry);
					
	
	end arch_primeiro;