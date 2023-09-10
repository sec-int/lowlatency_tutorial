//////////////////////////////////////////////////
// PRESENT Sbox
//
module  sbox  ( a , y ) ;


input   [0:3]  a ;  // 4-bit input

output  [0:3]  y ;  // 4-bit yput

reg     [0:3]  y ;  // 4-bit yput

// Lookup table
always  @ ( * )
  case  ( a )
 	  4'h0  :  y  =  4'hC ; 
    4'h1  :  y  =  4'h5 ; 
    4'h2  :  y  =  4'h6 ; 
    4'h3  :  y  =  4'hB ; 
    4'h4  :  y  =  4'h9 ;
    4'h5  :  y  =  4'h0 ; 
    4'h6  :  y  =  4'hA ; 
    4'h7  :  y  =  4'hD ; 
    4'h8  :  y  =  4'h3 ; 
    4'h9  :  y  =  4'hE ; 
    4'hA  :  y  =  4'hF ; 
    4'hB  :  y  =  4'h8 ; 
    4'hC  :  y  =  4'h4 ; 
    4'hD  :  y  =  4'h7 ; 
    4'hE  :  y  =  4'h1 ; 
    4'hF  :  y  =  4'h2 ;
  endcase


endmodule

