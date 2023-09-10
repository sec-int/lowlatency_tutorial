//////////////////////////////////////////////////
`timescale  1 ns / 1 ns
//////////////////////////////////////////////////
// Testbench
//
module  pcore_tb ;


parameter  per  =  10 ; // Cloclk period for 100 MHz

// Inputs declared as "registers"
reg   [0:63]   inp ; // Data input
reg   [0:127]  key ; // Key input
reg            d   ; // Dec select
reg            st  ; // Start signal
reg            clk ; // Clock

// Outputs declared as "nets"
wire  [0:63]   out ; // Data output

// Instantiate device under test (DUT)
pcore  dut  (
  .st  ( st  ) ,
  .d   ( d   ) ,
  .inp ( inp ) ,  
  .key ( key ) ,
  .out ( out ) ,
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
    #(3*per) ;  // Wait
    st     <= #1  1'b1 ;
    inp    <= #1  64'h0000000000000000 ;
    key    <= #1  128'h00000000000000000000000000000000 ;
  	d      <= #1  1'b0 ;	
    #(1*per) ;
	  st     <= #1  1'b0 ;
    #(20*per) ;  // Check to see if output is correct
    st     <= #1  1'b1 ;
    inp    <= #1  64'h818665aa0d02dfda ;
    key    <= #1  128'h00000000000000000000000000000000 ;
	  d      <= #1  1'b1 ;
    #(1*per) ;
	  st     <= #1  1'b0 ;
    #(20*per) ;  // Check to see if output is correct
    st     <= #1  1'b1 ;
    inp    <= #1  64'h0123456789abcdef ;
    key    <= #1  128'h0000000000000000fedcba9876543210 ;
	  d      <= #1  1'b0 ;	
    #(1*per) ;
	  st     <= #1  1'b0 ;
    #(20*per) ;  // Check to see if output is correct
    st     <= #1  1'b1 ;
    inp    <= #1  64'hae25ad3ca8fa9ccf ;
    key    <= #1  128'h0000000000000000fedcba9876543210 ;
	  d      <= #1  1'b1 ;
    #(1*per) ;
  	st     <= #1  1'b0 ;	
    #(30*per) ;  // Check to see if output is correct
    $stop ;
  end


endmodule
//////////////////////////////////////////////////

