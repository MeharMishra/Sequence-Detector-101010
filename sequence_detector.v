module sequence_detector( x, clk, reset,y);
  input x;
  input clk;
  input reset;
  output reg y;
  reg[2:0] ps;   // current state
  reg[2:0] ns;   // next state
  parameter [2:0] a=3'b000;
  parameter [2:0] b=3'b001;
  parameter [2:0] c=3'b010;
  parameter [2:0] d=3'b011;
  parameter [2:0] e=3'b100;
  parameter [2:0] f=3'b101;

 
  always @(posedge clk, posedge reset)
    begin
      if(reset)
        ps <=a;
      else
        ps <=ns;
    end 
  
  always @(x,ps)
    begin
      case(ps)
        a :
          if(x==1'b1)
            begin
              ns =b;
              y = 1'b0;
            end 
               else
                 begin
                 
                 ns = a;
                 y = 1'b0;
                 end 
            
         b :
           if(x==1'b1)
            begin
              ns =b;
              y = 1'b0;
            end
               else
                 begin
                 ns = c;
                y = 1'b0;
                 end
            
        c: 
          if(x==1'b1)
            begin
              ns =d;
             y = 1'b0;
            end
               else
                 begin
                 ns = c;
                 y = 1'b0;
                 end
            
        d:
          if(x==1'b1)
            begin
              ns =d;
              y = 1'b0;
            end
               else
                 begin
                 ns = e;
                y = 1'b0;
                 end
            
        e:
          if(x==1'b1)
            begin
              ns =f;
            y = 1'b0;
            end
               else
                 begin
                 ns = e;
                y = 1'b0;
                 end
             
        f:
          if(x==1'b1)
            begin
              ns = a;
              y = 1'b0;
            end
               else
                 begin
                 ns = a;
                 y = 1'b1;
                 end
        
           
        
        default:
               begin
                 ns =a;
                y =1'b0;
               end
      endcase
    end 
 
endmodule
        
  
             
              
            
        
        
          
            
            
       

              
            
       
          
          
        
        
       
        
        
       
        
     
        
        
        
        
        
        
      
    