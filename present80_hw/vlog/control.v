//////////////////////////////////////////////////
// Control module for PRESENT
//
module  control  ( sta , ck , rn , r0 , cnt , act , rdy ) ;


input           sta    ;  // Start signal
input           ck     ;  // Rising edge clock
input           rn     ;  // Active low reset

output          r0     ;  // Round-0 flag
output  [0:4]   cnt    ;  // Counter
output          act    ;  // Active signal
output          rdy    ;  // Ready signal

reg     [0:4]   cnt_ps ;  // PS of counter
wire    [0:4]   cnt_ns ;  // NS of counter
wire            r31    ;  // Round-31 flag
reg             act_ps ;  // PS of active
wire            act_ns ;  // NS of active
reg             rdy    ;  // DFF output is ready


// Define counter
//
assign  cnt_ns  =  sta  ?  0  :  ( act ? cnt_ps+1 : cnt_ps ) ;
//
always  @ ( posedge ck  or  negedge rn )
  if  ( !rn )  cnt_ps  <=  0 ;
  else         cnt_ps  <=  cnt_ns ;
//
assign  cnt  =  cnt_ps ;
//
assign  r0   =  ( cnt_ps == 0  ) ;
assign  r31  =  ( cnt_ps == 31 ) ;

// Define active signal
//
assign  act_ns  =  sta  ?  1  :  ( r31 ? 0 : act_ps ) ;
//
always  @ ( posedge ck  or  negedge rn )
  if  ( !rn )  act_ps  <=  0 ;
  else         act_ps  <=  act_ns ;
//
assign  act  =  act_ps ;

// Delay Round-31 flag to get ready output
//
always  @ ( posedge ck  or  negedge rn )
  if  ( !rn )  rdy  <=  0 ;
  else         rdy  <=  r31 ;


endmodule

