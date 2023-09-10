//////////////////////////////////////////////////
// Key register
//
module  kreg  ( sta , act , inp , nxt , ck , rn , out ) ;


input   [0:79]  inp ;  // Key initial data
input   [0:79]  nxt ;  // Next value of key
input           act ;  // Active signal
input           sta ;  // Start signal
input           ck  ;  // Rising edge clock
input           rn  ;  // Active low reset

output  [0:79]  out ;  // Key output

reg     [0:79]  out ;  // Key output


always  @ ( posedge ck  or  negedge rn )
  if      ( !rn )  out  <=  0 ;
  else if ( sta )  out  <=  inp ;
  else if ( act )  out  <=  nxt ;


endmodule

