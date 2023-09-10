//////////////////////////////////////////////////
// State register
//
module  sreg  ( sta , act , inp , nxt , ck , rn , out ) ;


input   [0:63]  inp ;  // State initial data
input   [0:63]  nxt ;  // Next value of state
input           act ;  // Active signal
input           sta ;  // Start signal
input           ck  ;  // Rising edge clock
input           rn  ;  // Active low reset

output  [0:63]  out ;  // State output

reg     [0:63]  out ;  // State output


always  @ ( posedge ck  or  negedge rn )
  if      ( !rn )  out  <=  0 ;
  else if ( sta )  out  <=  inp ;
  else if ( act )  out  <=  nxt ;


endmodule

