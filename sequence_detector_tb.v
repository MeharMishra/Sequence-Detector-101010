module seqdetector_tb;
reg x;
reg clk,reset;
wire y;

  
sequence_detector U1
(
   .x(x),
   .y(y),
   .clk(clk),
   .reset(reset)
);
 
initial 
    begin
      $dumpfile("sequence_detector.vcd");
      $dumpvars(0,U1);
    end  
    
 
initial
begin
    clk =0;
    reset = 1;
    #3 reset = 0;
    forever #5 clk = ~clk;
end


 
initial
  begin 
  @(posedge clk) x = 1'b0; 
  #5;
  @(posedge clk) x = 1'b1;
  #5;
  @(posedge clk) x = 1'b0;
  #5;
  @(posedge clk) x = 1'b1;
  #5;
  @(posedge clk)x = 1'b0;
  #5;
  @(posedge clk)x = 1'b1;
  #5;
  @(posedge clk)x = 1'b0;
  #5;
  end
 
 initial 
    begin
  #200 $finish;
    end
   
    
endmodule
