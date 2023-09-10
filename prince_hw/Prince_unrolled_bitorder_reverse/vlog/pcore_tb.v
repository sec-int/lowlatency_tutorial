//////////////////////////////////////////////////
`timescale  1 ns / 1 ns
//////////////////////////////////////////////////
// Testbench
//
module  pcore_tb ;


parameter  per  =  10 ; // Clock period for 100 MHz

// Inputs declared as "registers"
reg   [0:63]   inp ; // Data input
reg   [0:127]  key ; // Key input
reg            d   ; // Dec select

// Outputs declared as "nets"
wire  [0:63]   out ; // Data output

// Instantiate device under test (DUT)
pcore  dut  (
  .d   ( d   ) ,
  .inp ( inp ) ,  
  .key ( key ) ,
  .out ( out )
) ;

// Stimulus
//
initial  // Use "initial" to define waveforms
  begin  // starting at zero time.
    inp    <= #1  64'h0000000000000000 ;
    key    <= #1  128'h00000000000000000000000000000000 ;
  	d      <= #1  1'b0 ;	
    #(10*per) ;  // Check to see if output is correct
    inp    <= #1  64'h818665aa0d02dfda ;
    key    <= #1  128'h00000000000000000000000000000000 ;
  	d      <= #1  1'b1 ;
    #(10*per) ;  // Check to see if output is correct
    inp    <= #1  64'h0123456789abcdef ;
    key    <= #1  128'h0000000000000000fedcba9876543210 ;
  	d      <= #1  1'b0 ;	
    #(10*per) ;  // Check to see if output is correct
    inp    <= #1  64'hae25ad3ca8fa9ccf ;
    key    <= #1  128'h0000000000000000fedcba9876543210 ;
  	d      <= #1  1'b1 ;
    #(20*per) ;  // Check to see if output is correct
    $stop ;
  end


endmodule
//////////////////////////////////////////////////

