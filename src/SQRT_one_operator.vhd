library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;
    use IEEE.MATH_REAL.LOG2;
    use IEEE.MATH_REAL.ceil;

entity SQRT_one_operator is
    generic(
        N:natural:=32;
        HANDSHAKE_ENABLE:boolean := false ;
        RST_ON : STD_LOGIC :='0' --active low
    );
    port (
        X: in STD_LOGIC_VECTOR(2*N-1 downto 0);
        start: in STD_LOGIC;
        clk: in  std_logic;
        rst: in  std_logic;

        result : out STD_LOGIC_VECTOR(N-1 downto 0);
        done : out STD_LOGIC
    );
end entity;


architecture rtl of SQRT_one_operator is
    type state_t is (IDLE_STATE,ADD_V_STATE,ITER_STATE,SHIFT_STATE,DONE_STATE,BRANCH_TAKEN,BRANCH_NOT_TAKEN);
    
    signal current_state: state_t:=IDLE_STATE;
    signal I : integer;
    signal V : UNSIGNED(2*N-1 downto 0);
    signal buff_X : UNSIGNED(2*N-1 downto 0);
    signal buff_Z : UNSIGNED(2*N-1 downto 0);
    signal ONE: UNSIGNED(2*N-1 downto 0);
    constant ZERO: UNSIGNED(2*N-1 downto 0) := (others=>'0');
    constant ZERO_N: UNSIGNED(N-1 downto 0) := (others=>'0');
    constant V_INIT: UNSIGNED(2*N-1 downto 0) := (2*N-2=>'1',others=>'0');

    --adder(TODO : remplacer par un composant et pas une méthode de fainéant)
    signal A_full:UNSIGNED(2*N downto 0):=(others=>'0');
    signal B_full:UNSIGNED(2*N downto 0):=(others=>'0');
    signal add_result_full : UNSIGNED(2*N downto 0):=(others=>'0');
    signal sign : std_logic :='0';

    alias A is A_full(2*N-1 downto 0);
    alias B is B_full(2*N-1 downto 0);
    alias add_result is add_result_full(2*N-1 downto 0);
    alias carry_out is add_result_full(2*N);

begin
    -- lazy add instruction
    add_result_full<=A_full+B_full when sign='0' else A_full-B_full;
 
    -- This synchroneous machine only sequences the algorithm (no operations) 
    STATE_LOGIC_MACHINE:process(clk,rst)
    begin
        if RST = RST_ON then
            current_state<=IDLE_STATE;
        else
          if rising_edge(CLK) then
            case current_state is
                when IDLE_STATE =>
                    if start='1' then
                        current_state<=ITER_STATE;
                    end if;
                    
                when ITER_STATE=>
                  if carry_out ='0' then --X-Z>0 
                    current_state<=BRANCH_TAKEN;
                  else
                    current_state<=BRANCH_NOT_TAKEN;
                end if;
                
                when BRANCH_TAKEN=>
                    current_state<=SHIFT_STATE;

                when BRANCH_NOT_TAKEN =>
                    current_state<=SHIFT_STATE;

                when ADD_V_STATE =>
                      current_state<=ITER_STATE;
                      
                when SHIFT_STATE =>
                    if(I=1) then
                        current_state<=DONE_STATE;
                    else
                        current_state<=ADD_V_STATE;
                    end if;
                    
                -- if a handshake is required the module will stall in this state waiting for the start signal to be low
                when DONE_STATE =>
                    if HANDSHAKE_ENABLE then
                        if start='0' then
                            current_state<=IDLE_STATE;
                        end if;
                    else
                        current_state<=IDLE_STATE;
                    end if;
                when others=>
                    current_state<=IDLE_STATE;
            end case;
        end if;
    end if;
    end process;
  
    -- This synchoneous machine can only update the registers X,V and Z
    INSTRUCTION_LOGIC_MACHINE_SYNC:process(clk,rst)
       variable temp_cmp : UNSIGNED(2*N-1 downto 0);
    begin
        if RST = RST_ON then
            buff_X<=ZERO;
            result<=(others=>'Z');
        else
          if rising_edge(CLK) then
            case current_state is

                when IDLE_STATE =>
                    if start='1' then
                        done<='0';
                        buff_X<=unsigned(X);                       
                        -- preinit Z with V as it's Z = V + 0
                        buff_Z<=unsigned(V_INIT);
                        V<=V_INIT;
                        I<=N;
                    end if;
                when ITER_STATE=>  
                    if carry_out='0' then
                        buff_X<=add_result;--X<=X-Z;
                    end if;
                    

                when BRANCH_TAKEN =>
                      buff_Z<=add_result;--z<=Z+V

                when BRANCH_NOT_TAKEN =>
                      buff_Z<=add_result; --z<=Z-V  
                      -- 
                when ADD_V_STATE =>
                      buff_Z<=add_result;--z<=Z+V
                      
                when SHIFT_STATE =>
                    I<=to_integer(add_result);--I<=I+1;
                    buff_Z<=SHIFT_RIGHT(buff_Z,1);
                    V<=SHIFT_RIGHT(V,2);
                    
                when DONE_STATE =>
                    result<=std_logic_vector(buff_Z(N-1 downto 0));
                    done<='1';

                when others=>
                  null;
            end case;
        end if;
    end if;
    end process;

    -- This machine
    ADDER_COMBINATORY_MACHINE:process (current_state)
      begin
        case current_state is
          when IDLE_STATE=>
            A <= buff_Z;
            B<=V;
            sign<='0';  
               
          when ITER_STATE=>
            A <= buff_X;
            B <= buff_Z;
            sign<='1';-- X-Z
            
          when BRANCH_TAKEN =>
            A <= buff_Z;
            B <= V;
            sign<='0';-- Z+V
          when BRANCH_NOT_TAKEN => 
            A <= buff_Z;
            B <= V;
            sign<='1';-- Z-V
          when ADD_V_STATE => 
            A <= buff_Z;
            B <= V;
            sign<='0';-- Z+V
          when SHIFT_STATE=>
            A<=to_unsigned(I,2*N); -- PROBLEM ici
            B<=TO_UNSIGNED(1,2*N);
            sign<='1';-- I-1
          when others=>
            A <= buff_Z;
            B<=V;
            sign<='0'; 
        end case;
    end process;
end architecture;