module and_df_tb;
  reg CLK,RESET,D;
  wire Q;
  
  initial
       $monitor("simtime=%g,CLK=%b,RESET=%b,D=%b,Q=%b",$time,CLK,RESET,D,Q);
    begin
      d dut(.clk(CLK),.reset(RESET),.d(D),.q(Q));
    end
  initial CLK = 0;
  always #5 CLK = ~CLK;
 initial
   begin
   RESET = 1; #10;
  RESET = 0; D = 0; #10;
  RESET = 0; D = 1; #10;
      $finish;
   end
  
endmodule
