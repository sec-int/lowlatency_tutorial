//////////////////////////////////////////////////
// Control module for Prince
//
module  cntrl  ( st , act , s , cnt , clk ) ;


input          st  ;
input          clk ;

output         act ;
output  [0:1]  s   ;
output  [0:2]  cnt ;

reg     [0:5]  pst ;
reg     [0:5]  nst ;

// State counter {act,s,cnt}
always  @ ( * )
  casex  ( { st , pst } )
    { 1'b1 , 1'b? , 2'b?? , 3'b??? }  :  nst  =  { 1'b1 , 2'b11 , 3'b001 } ;
    { 1'b0 , 1'b1 , 2'b11 , 3'b001 }  :  nst  =  { 1'b1 , 2'b11 , 3'b010 } ;
    { 1'b0 , 1'b1 , 2'b11 , 3'b010 }  :  nst  =  { 1'b1 , 2'b11 , 3'b011 } ;
    { 1'b0 , 1'b1 , 2'b11 , 3'b011 }  :  nst  =  { 1'b1 , 2'b11 , 3'b100 } ;
    { 1'b0 , 1'b1 , 2'b11 , 3'b100 }  :  nst  =  { 1'b1 , 2'b10 , 3'bxxx } ;
    { 1'b0 , 1'b1 , 2'b10 , 3'b??? }  :  nst  =  { 1'b1 , 2'b00 , 3'b100 } ;
    { 1'b0 , 1'b1 , 2'b00 , 3'b100 }  :  nst  =  { 1'b1 , 2'b00 , 3'b011 } ;
    { 1'b0 , 1'b1 , 2'b00 , 3'b011 }  :  nst  =  { 1'b1 , 2'b00 , 3'b010 } ;
    { 1'b0 , 1'b1 , 2'b00 , 3'b010 }  :  nst  =  { 1'b1 , 2'b00 , 3'b001 } ;
    { 1'b0 , 1'b1 , 2'b00 , 3'b001 }  :  nst  =  { 1'b1 , 2'b00 , 3'b000 } ;
    { 1'b0 , 1'b1 , 2'b00 , 3'b000 }  :  nst  =  { 1'b0 , 2'bxx , 3'bxxx } ;
    default                           :  nst  =  { 1'b0 , 2'bxx , 3'bxxx } ;
  endcase
always  @ ( posedge clk )  pst  <=  nst ;

// Active output
assign  act  =  st  ?  1'b1  :  pst[0] ;

// Select outputs
assign  s  =  st  ?  2'b11  :  pst[1:2] ;

// Counter output
assign  cnt  =  st  ?  3'b000  :  pst[3:5] ;
  

endmodule
//////////////////////////////////////////////////

