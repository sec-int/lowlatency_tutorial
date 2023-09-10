//////////////////////////////////////////////////
`timescale  1 ns / 1 ns
//////////////////////////////////////////////////
// Testbench for PRESENT-80 module
//
module  present_tb ;


parameter  per  =  10 ;  // Clock period for 100 MHz

// Inputs declared as "registers"
reg            sta ;  // Start signal
reg   [0:63]   inp ;  // Data input
reg   [0:79]   key ;  // Key input
reg            ck  ;  // Rising edge clock
reg            rn  ;  // Active low reset

// Outputs declared as "nets"
wire           rdy ;
wire  [0:63]   out ;  // Data output

// Internal variables for simulation control
integer  i ;


// Instantiate device under test (DUT)
present  dut  (
  .sta ( sta ) ,
  .inp ( inp ) ,
  .key ( key ) ,
  .ck  ( ck  ) ,
  .rn  ( rn  ) ,
  .rdy ( rdy ) ,
  .out ( out )
) ;


// Define reset
initial
  begin
    rn  <=  1'b0 ;  // Initially reset is "0"
    #(per/2) ;      // After (per/2) nanoseconds
    rn  <=  1'b1 ;  // reset becomes "1" (inactive)
  end

// Define clock
initial  ck  <=  1'b1 ;  // Initially clock is "1"
always  #(per/2)  // Every (per/2) ns, clock is toggled,
  ck  <=  ~ ck ;  // resulting in a periodic square wave

// Other stimulus
//
initial  // Use "initial" to define waveforms
  begin  // starting at zero time
    // Initialize everything first
    sta  <= #1  1'b0 ;
    inp  <= #1  64'd0 ;
    key  <= #1  80'd0 ;
    // Wait a few periods, change inputs and send start
    #(3*per) ;  // Wait for 3 periods of time
    inp  <= #1  64'h0000000000000000 ;
    key  <= #1  80'h00000000000000000000 ;
    sta  <= #1  1'b1 ;  // Start pulled up
    #(per) ;            // After one period of time
    sta  <= #1  1'b0 ;  // start is pulled down -> a single pulse
    // Wait until ready becomes "1"
    wait ( rdy ) ;
    #(3*per) ;  // Check to see if output is correct
    // Wait a few periods, change inputs and send start
    #(3*per) ;  // Wait for 3 periods of time
    inp  <= #1  64'hffffffffffffffff ;
    key  <= #1  80'hffffffffffffffffffff ;
    sta  <= #1  1'b1 ;  // Start pulled up
    #(per) ;            // After one period of time
    sta  <= #1  1'b0 ;  // start is pulled down -> a single pulse
    // Wait until ready becomes "1"
    wait ( rdy ) ;
    #(3*per) ;  // Check to see if output is correct
     $stop ;
  end


endmodule

