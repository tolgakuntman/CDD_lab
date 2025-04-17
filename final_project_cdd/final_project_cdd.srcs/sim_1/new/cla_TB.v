`timescale 1ns / 1ps

module mp_adder_TB();

  localparam CLOCK_PERIOD_NS = 100;
  
  localparam OPERAND_WIDTH   = 1024; 
  localparam ADDER_WIDTH     = 256; 
  
  reg           rClk, rRst, rStart, rSub;
  reg [OPERAND_WIDTH-1:0]   rA, rB;
  
  wire [OPERAND_WIDTH:0]  wRes;
  wire          wDone;
  
  reg [OPERAND_WIDTH:0]  rExpectedResult;
  
  // define adder types
    localparam RCA =   4'b0000;
    localparam CBA =   4'b0001;
    localparam CLA =   4'b0010;
    localparam BCLA =  4'b0011;
    localparam CSelA = 4'b0100;
    localparam GFA =   4'b0101;
    localparam IGFA =  4'b0110;
    localparam RCACC = 4'b0111;
    localparam CCA   =  4'b1000;
  
  mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH), .BLOCK_WIDTH(8), .SUB_BLOCK_WIDTH(4), .ADDER_TYPE(CLA) )
  mp_adder_INST
  ( .iClk(rClk), .iRst(rRst), .iStart(rStart), .iSub(rSub), .iOpA(rA), .iOpB(rB), .oRes(wRes), .oDone(wDone) );

  // definition of clock period
  localparam  T = 20;  
  
  // generation of clock signal
  always 
  begin
    rClk = 1;
    #(T/2);
    rClk = 0;
    #(T/2);
  end

  initial
    begin
      rRst = 1;
      rStart = 0;
      rA = 0;
      rB = 0;
      rSub = 0;
      
      #(5*T);
      rRst = 0;
      #(5*T);
      
      rSub = 0;
      rStart = 1;
      rA <= 1024'd100578099573686118727549194780829779592337975797080493395477925050262472596375759089481678959207290213541902820223755333171608477372025512155327664095469966155657030817351774440477748016149402591312111460432730645366223313210104579044750160262966873090774981194046600354858920858193334486506779536481502751168;
      rB <= 1024'd5362224595743230992805362968606537618443862175483983233757503439161032101069102959998801774565943579639063310498082274855131325535312916422112728191281619883794819318584458228617419888516720553151323183398669289170190561398501149362700255706092450142197908137957233140439481225212415663495767229180666433007;
//        rA<= 16'd44462;
//        rB<= 16'd29397;
      #T;
      rExpectedResult = rA + rB;
      rStart = 0;
            
      // wait until wDone is asserted     
      @(posedge wDone);
      
      // display the results in the terminal
      $display(rExpectedResult);
      $display(wRes);
      
      // compare results
      // if using the test vector, answer should be: 0x1_02020202_02020202_02020202_09090908
      if ( rExpectedResult != wRes )
        $display("Test Failed - Incorrect Addition");
      else
        $display("Test Passed - Correct Addition");
      
      #(5*T);
        
      $stop;
    end

endmodule