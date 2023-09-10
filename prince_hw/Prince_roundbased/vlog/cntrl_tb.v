//////////////////////////////////////////////////
`timescale  1 ns / 1 ns
//////////////////////////////////////////////////
// Testbench for control module
//
module  cntrl_tb ;


parameter  per  =  10 ; // Cloclk period for 100 MHz

// Inputs declared as "registers"
reg           st  ;
reg           clk ;

// Outputs declared as "nets"
wire          act ;
wire   [0:1]  s   ;
wire   [0:3]  cnt ;

// Instantiate device under test (DUT)
cntrl  dut  (
  .st  ( st  ) ,
  .act ( act ) ,
  .s   ( s   ) ,
  .cnt ( cnt ) ,
  .clk ( clk )
) ;

// Cloclk
//
initial  clk  <=  1'b1 ;
always  #(per/2)  clk  <=  ~ clk ;

// Other stimulus
//
initial  // Use "initial" to define waveforms
  begin  // starting at zero time.
    st     <= #1  1'b0 ;
    #(3*per) ;  // Checlk to see if output is correct
    st     <= #1  1'b1 ;
    #(1*per) ;  // Checlk to see if output is correct
	st     <= #1  1'b0 ;
    #(20*per) ;  // Checlk to see if output is correct
    st     <= #1  1'b1 ;
    #(1*per) ;  // Checlk to see if output is correct
	st     <= #1  1'b0 ;
    #(20*per) ;  // Checlk to see if output is correct
    $stop ;
  end


endmodule
//////////////////////////////////////////////////

