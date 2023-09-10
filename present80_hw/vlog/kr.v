//////////////////////////////////////////////////
// Key schedule block for PRESENT
//
module  kr  ( kinp , cnt , kout ) ;


input   [0:79]  kinp ;
input   [0:4]   cnt  ;

output  [0:79]  kout ;

wire    [0:79]  krot ;


// Rotate
assign  krot  =  { kinp[61:79] , kinp[0:60] } ;

// Sbox
sbox  m00  ( .a(krot[0:3])  , .y(kout[0:3]) ) ;

// XOR
assign  kout[60:64]  =  cnt  ^  krot[60:64] ;

// Assign rest
assign  kout[4:59]   =  krot[4:59] ;
assign  kout[65:79]  =  krot[65:79] ;


endmodule

